library(dplyr)
library(openxlsx)
library(readr)
library(stringr)
library(tidyverse)
df.1<-data.frame()
df.2<-data.frame()
out.df<-data.frame()

### function ####
merge_TechRep <- function(info) {
  input_data <- read_tsv(info$file,show_col_types = FALSE)
  
  # 检测所有 Reporter intensity corrected 列
  reporter_cols <- grep("Reporter intensity corrected [0-9]+", colnames(input_data), value = TRUE)
  
  ##过滤
  # input_data<-input_data[,reporter_cols ]
  # 提取通道号(1-8)和样本名
  extract_components <- function(cols) {
    data.frame(
      colname = cols,
      channel = str_extract(cols, "corrected [0-9]+"),
      sample = str_match(cols, "Reporter intensity corrected [0-9]+\\s(.*?)___[0-9]+$")[,2]
    ) %>% 
      filter(!is.na(sample)) %>% 
      distinct()
  }
  
  components <- extract_components(reporter_cols)
  
  # 对每个通道-样本组合合并重复
  for(i in 1:nrow(components)) {
    current_channel <- components$channel[i]
    current_sample <- components$sample[i]
    
    # 找出该通道-样本的所有重复列
    cols_to_merge <- grep(
      paste0(current_channel, " ", current_sample, "___[0-9]+"),
      colnames(input_data),
      value = TRUE
    )
    
    if(length(cols_to_merge) > 1) {
      # 计算中位数合并
      merged_values <- apply(input_data[, cols_to_merge], 1, max, na.rm = TRUE)
      
      # 创建新列名(去掉___后缀)
      new_col <- paste("Reporter intensity", current_channel, current_sample)
      
      # 添加到数据中
      input_data[[new_col]] <- merged_values
    }
  }
  
  # 移除原始重复列
  output_data <- input_data %>%
    select(-matches("___[0-9]+$"))
  
  return(output_data)
}

get_stat_table<-function(info,data=NULL,note="",out.path=NULL){
  
  if(is.null(out.path)){
    out.path<-dirname(rstudioapi::getSourceEditorContext()$path)
  }
  
  if(is.null(data)){
    # data<-read.table(info$file,sep = "\t",header = T,check.names = F)
    data<-read_tsv(info$file,show_col_types = FALSE)
  }
  
  col<-colnames(data)[1:14]
  
  use<-data[,c(col,"Amino acid",	"Sequence window","Reverse",	"Potential contaminant")]
  "Contaminant"
  use$Celline<-info$celline
  use$Disease<-info$disease
  use$Disease_subtype<-info$disease.sub
  use$Drug<-info$drug
  use$PTM<-info$ptm
  use$Note<-note
  tmp<-info$file %>% strsplit(.,"/",fixed = T) %>% first()
  use$PXD<-tmp[grep("PXD",tmp)]
  name<-c(info$ctl.col,info$exp.col)
  df<-data[,name]
  
  df.sep<-data[,name]
  colnames(df.sep)<-c(paste0("ctl_",1:length(info$ctl.col)),
                      paste0("exp_",1:length(info$exp.col)))
  
  df.ctl<-log2(df[,info$ctl.col]+1) %>% signif(.,digits = 4)
  df.exp<-log2(df[,info$exp.col]+1) %>% signif(.,digits = 4)
  df.1<<-df.ctl
  df.2<<-df.exp
  
  ## 进度条
  pb <- txtProgressBar(style=3)
  row<-nrow(df.ctl)
  wilcox.p<-c(rep(1,row))
  regulation<-c(rep(1,row))
  for (n in 1:row) {
    setTxtProgressBar(pb, n/row)
    exp<-df.exp[n,] %>% as.numeric()
    ctl<-df.ctl[n,] %>% as.numeric()
    if(mean(exp)>mean(ctl)){
      regulation[n]<-"ptm-up"
    }else if(mean(exp)==mean(ctl)){
      regulation[n]<-""
    }else{
      regulation[n]<-"ptm-down"
    }
    
    test<-wilcox.test(exp,ctl)
    wilcox.p[n]<- test$p.value
  }
  close(pb)
  
  
  
  
  ctl<-apply(df.ctl,1,FUN = function(x){paste0(x,collapse = ",")})
  exp<-apply(df.exp,1,FUN = function(x){paste0(x,collapse = ",")})
  merge.df<-data.frame(Intensity.ctl=ctl,
                       Intensity.exp=exp,
                       Regulation=regulation,
                       P.wilcox=wilcox.p,
                       Padj.wilcox=p.adjust(wilcox.p,method = "BH"))
  
  
  out<-cbind(use,merge.df)
  out$P.wilcox[is.nan(out$P.wilcox)]<-1
  out$P.wilcox<-out$P.wilcox %>% signif(.,4)
  
  write.xlsx(out,file = paste0(out.path,"/Out/",info$out.file))
  return(out)
}

get_col<-function(info,data=NULL,correct=FALSE){
  if(is.null(data)){
    # data<-read.table(info$file,sep = "\t",header = T,check.names = F)
    data<-read_tsv(info$file,show_col_types = FALSE)
  }
  
  if(correct){
    
    intensity_columns <- grep("Reporter intensity corrected", colnames(data), value = TRUE)
    print(intensity_columns)
    return(intensity_columns)
  }else{
    # 提取包含"Intensity"且不包含"___"的列名
    intensity_columns <- grep("Intensity", colnames(data), value = TRUE)
    intensity_columns <- intensity_columns[!grepl("___", intensity_columns)]
    intensity_columns <- setdiff(intensity_columns,"Intensity")
    print(intensity_columns)
    return(intensity_columns)
  }
}

check_indensity<-function(info,data=NULL,col=c()){
  library(ggrepel)
  if(is.null(data)){
    # data<-read.table(info$file,sep = "\t",header = T,check.names = F)
    data<-read_tsv(info$file,show_col_types = FALSE)
  }
  df<-data[,col]
  df<-log2(df+1)
  # df<-scale(df)
  pca<-prcomp(df,scale. = TRUE)
  pca_res<-pca$rotation[,1:2] %>% as.data.frame()%>% tibble::rownames_to_column("sample")
  ggplot(pca_res,aes(x=PC1,y=PC2,label=sample))+
    geom_point(size=3)+
    geom_label_repel(
      fill = NA,max.overlaps = 10,        # 去除填充色
      color = "black",   # 设置文字颜色（边框设为 NA）
      label.size = NA,   # 去除标签边框的线条（边框大小设为 0）
      box.padding = 0.5  # 调整标签与点的间距（可选）
    )+
    theme_bw()
}
filter_table<-function(data){
  layout(matrix(c(1, 2), nrow = 1))
  ## 定位概率 (Localization Prob)
  tryCatch(
    expr = {
      # 主代码块
      data$`Localization prob` %>% density() %>% plot(., main = "Localization prob")
      abline(v = 0.9, col = "red")
    },
    error = function(e) {
      # 错误处理
      message("An error occurred: ", e$message)
      # 可以选择返回一个值或执行其他操作
    },
    warning = function(w) {
      # 警告处理
      message("A warning occurred: ", w$message)
      # 可以选择抑制警告或执行其他操作
    },
    finally = {
      # 无论成功或失败都会执行的代码
      message("Attempted to plot density of Localization prob")
    }
  )
  # 大于0.8
  
  ## 反向和潜在污染物
  # data$Reverse
  # data$`Potential contaminant`
  # Reverse ≠ 1（排除反向匹配肽段）
  # Potential contaminant ≠ 1（排除潜在污染物）
  
  ## 磷酸化肽段质量
  
  tryCatch(
    expr = {
      # 主代码块
      data$`Delta score`  %>% density() %>% plot(.,main="Delta score")
      abline(v=5,col="red")
    },
    error = function(e) {
      # 错误处理
      message("An error occurred: ", e$message)
      # 可以选择返回一个值或执行其他操作
    },
    warning = function(w) {
      # 警告处理
      message("A warning occurred: ", w$message)
      # 可以选择抑制警告或执行其他操作
    },
    finally = {
      # 无论成功或失败都会执行的代码
      message("Attempted to plot density of Localization prob")
    }
  )
  
  # <0.05
  
  
  ##多个分数
  # Localization prob（定位概率）：磷酸化位点在肽段中被正确定位的概率，≥0.75 通常视为可靠。
  # FLR（错误定位率）：位点被错误定位的概率，越低说明定位准确性越高，常以 1% 为控制阈值。
  # Score diff（分数差异）：目标位点评分与次优位点评分的差值，越大定位越明确。
  # PEP（后验误差概率）：结果为错误的概率，范围 0~1，越接近 0 越可靠。
  # Score（评分）：肽段或位点的整体鉴定评分（如 Andromeda 评分），越高匹配质量越好。
  # Delta score（delta 评分）：目标位点定位评分与最可能错误定位评分的差值，越大定位特异性越强。
  # Score for localization（定位评分）：专门评估位点定位准确性的评分，越高定位越可信。
  
  # id_aggr<-data$`Fasta headers`[1] %>% strsplit(.,"|",fixed = T)
  # protein_uniprot_id<-id_aggr[[1]][2]
  # protein_aggr2<-id_aggr[[1]][3]
  # protein_entry<-strsplit(protein_aggr2,split = " ")[[1]][1]
  # species<-strsplit(protein_aggr2,split = "OS=")[[1]][1] %>% strsplit(.," ") %>% unlist() %>% first()
  # 
  
  col<-colnames(data)[1:14]
  
  
  # # 计算每行有效样本数（值大于0的样本数）
  # valid_samples <- rowSums(data[intensity_columns] > 0, na.rm = TRUE)
  # 
  # # 筛选出有效样本比例不低于50%的行
  # df_filtered <- data[valid_samples >= length(intensity_columns) * 0.5, ]
  # 
  
  res<-data %>% filter(`Localization prob`>0.8) %>% 
    filter(`Score diff`>0.5) %>% 
    filter(P.wilcox<0.1) %>% 
    filter(Score>0.5) %>% 
    filter(`Score for localization`>0.6)
  message(paste0("Total: ",nrow(data),
                 ", Filtered: ",nrow(data)-nrow(res),
                 ", Left: ",nrow(res)))
  return(res)
  
}
library(openxlsx)

merge_out_table <- function(input_dir, output_file) {
  # 使用示例
  # merged_data <- merge_out_table("输入目录路径", "输出文件路径.xlsx")
  # 获取目录下所有xlsx文件
  xlsx_files <- list.files(path = input_dir, 
                           pattern = "\\.xlsx$", 
                           full.names = TRUE,
                           ignore.case = TRUE)
  
  # 检查是否找到xlsx文件
  if (length(xlsx_files) == 0) {
    stop("在指定目录中未找到任何.xlsx文件")
  }
  
  # 初始化一个空列表来存储数据
  data_list <- list()
  
  # 循环读取每个xlsx文件
  n<-0
  pb <- txtProgressBar(style=3)
  for (file in xlsx_files) {
    # print(file)
    n<-n+1
    setTxtProgressBar(pb, n/length(xlsx_files))
    # # 读取xlsx文件中的所有工作表
    # sheets <- getSheetNames(file)
    
    # 读取第一个工作表（可根据需要修改为读取所有工作表）
    # df <- read.xlsx(file, sheet = sheets[1],check.names = F)
    df <- read.xlsx(file,check.names = F)
    # 添加文件名作为新列（可选）
    col<-c(
      "Proteins",
      "Positions.within.proteins",
      "Leading.proteins",
      "Protein",
      "Protein.names",
      "Gene.names",
      "Fasta.headers",
      "Localization.prob",
      "FLR",
      "Score.diff",
      "PEP",
      "Score",
      "Delta.score",
      "Score.for.localization",
      "Amino.acid",
      "Sequence.window",
      "Reverse",
      "Potential.contaminant",
      "Celline",
      "Disease",
      "Disease_subtype",
      "Drug",
      "PTM",
      "Note",
      "PXD",
      "Intensity.ctl",
      "Intensity.exp",
      "Regulation",
      "P.wilcox",
      "Padj.wilcox"
    )
    
    # 找出缺失列
    missing_cols <- setdiff(col, names(df))
    
    # 给缺失列添加 NA
    for (cname in missing_cols) {
      df[[cname]] <- ""
    }
    
    # 确保列的顺序和 col 一致
    df <- df[, col]
    
    
    df$source_file <- basename(file)
    
    # 添加到列表
    data_list[[file]] <- df
  }
  close(pb)
  # 合并所有数据框
  merged_df <- do.call(rbind, data_list)
  
  # 保存合并后的数据
  write.xlsx(merged_df, file = output_file)
  message(paste0("Table: ",length(xlsx_files),
                 ", PRIDE: ",unique(merged_df$PXD) %>% length(),
                 ", Records: ",nrow(merged_df)
  ))
  # 返回合并后的数据框（可选）
  return(merged_df)
}


### 输出表格 ####
# all<-merge_out_table("Out/", "pmads_inferred.xlsx")
# all$PXD %>% unique()
# out<-filter_table(all)
# out <- all %>% filter(P.wilcox<0.05)
# write.xlsx(out,"pmads_inferred.p0.05.xlsx")
