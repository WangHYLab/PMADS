source("Func.R")
### PXD052364 1 ####
info<-list(file="Completed/PXD052364/sub_ECC/Phospho (STY)Sites.txt",
           out.file="PXD052364.P.ECC.xlsx",
           celline="ECC-1",
           disease="Endometrial Cancer",
           disease.sub="", 
           ptm="phosphorylation",
           drug="DEAB",
           exp.col=c('Intensity 60622_D2_1',
                     'Intensity 60622_D2_2',
                     'Intensity 60622_D3_1',
                     'Intensity 60622_D3_2',
                     'Intensity 60622_ED1_2'),
           ctl.col=c( 'Intensity 90422_160622_EC1_1',
                      'Intensity 90422_160622_EC1_1_20220617215810',
                      'Intensity 90422_160622_EC1_2',
                      'Intensity 90422_160622_EC2_1_20220617201937',
                      'Intensity 90422_160622_EC2_1_20220618004403',
                      'Intensity 90422_160622_EC2_2',
                      'Intensity 90422_160622_EC3_1',
                      'Intensity 90422_160622_EC3_2')
)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

info$file<-"Completed/PXD052364/sub_ECC/Acetyl (K)Sites.txt"
info$out.file<-"PXD052364.Ac.ECC.xlsx"
info$ptm<-"acetylation"
res.ac<-get_stat_table(info = info)
res.f.ac<-filter_table(res.ac)

info$file<-"Completed/PXD052364/sub_ECC/Oxidation (M)Sites.txt"
info$out.file<-"PXD052364.O.ECC.xlsx"
info$ptm<-"Oxidation"
res.O<-get_stat_table(info = info)
res.f.O<-filter_table(res.O)

### PXD052364 2 ####
info<-list(file="Completed/PXD052364/sub_RL/Phospho (STY)Sites.txt",
           out.file="PXD052364.P.RL.xlsx",
           celline="RL95-2",
           disease="Endometrial Cancer",
           disease.sub="", 
           ptm="phosphorylation",
           drug="DEAB",
           exp.col=c("Intensity 60622_RD1_1","Intensity 60622_RD1_2","Intensity 60622_RD2_1",      
                     "Intensity 60622_RD2_2" ,"Intensity 60622_RD3_1","Intensity 60622_RD3_2"),
           ctl.col=c( "Intensity 90422_160622_RL1_1", "Intensity 90422_160622_RL1_2", "Intensity 90422_160622_RL2_1",
                      "Intensity 90422_160622_RL2_2", "Intensity 90422_160622_RL3_1", "Intensity 90422_160622_RL3_2")
)
get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

info$file<-"Completed/PXD052364/sub_RL/Acetyl (K)Sites.txt"
info$out.file<-"PXD052364.Ac.RL.xlsx"
info$ptm<-"acetylation"
res.ac<-get_stat_table(info = info)
res.f.ac<-filter_table(res.ac)

info$file<-"Completed/PXD052364/sub_RL/Oxidation (M)Sites.txt"
info$out.file<-"PXD052364.O.RL.xlsx"
info$ptm<-"Oxidation"
res.O<-get_stat_table(info = info)
res.f.O<-filter_table(res.O)

### PXD051376 1 ####
info<-list(file="Completed/PXD051376/sub_MCF7/Acetyl (K)Sites.txt",
           out.file="PXD051376.Ac.MCF7-Mn2L2Pt.xlsx",
           celline="MCF7",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="acetylation",
           drug="Mn2L2Pt", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 67_TV_MCF7_1_Mn2L2Pt", "Intensity 68_TV_MCF7_2_Mn2L2Pt", "Intensity 75_TV_MCF7_3_Mn2L2Pt"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)
col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD051376 2 ####
info<-list(file="Completed/PXD051376/sub_MCF7/Acetyl (K)Sites.txt",
           out.file="PXD051376.Ac.MCF7-PtDAPCl2.xlsx",
           celline="MCF7",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="acetylation",
           drug="PtDAPCl2", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 65_TV_MCF7_1_PtDAPCl2", "Intensity 70_TV_MCF7_2_PtDAPCl2", "Intensity 76_TV_MCF7_3_PtDAPCl2"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)

res.ac<-get_stat_table(info = info)
res.f.ac<-filter_table(res.ac)

### PXD051376 3 ####
info<-list(file="Completed/PXD051376/sub_MCF7/Acetyl (K)Sites.txt",
           out.file="PXD051376.Ac.MCF7-Mn2L2.xlsx",
           celline="MCF7",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="acetylation",
           drug="Mn2L2", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 64_TV_MCF7_1_Mn2L2", "Intensity 71_TV_MCF7_2_Mn2L2", "Intensity 78_TV_MCF7_3_Mn2L2"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)

res.ac<-get_stat_table(info = info)
res.f.ac<-filter_table(res.ac)



### PXD051376 4 氧化 ####
info<-list(file="Completed/PXD051376/sub_MCF7/Oxidation (M)Sites.txt",
           out.file="PXD051376.O.MCF7-Mn2L2Pt.xlsx",
           celline="MCF7",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="oxidation",
           drug="Mn2L2Pt", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 67_TV_MCF7_1_Mn2L2Pt", "Intensity 68_TV_MCF7_2_Mn2L2Pt", "Intensity 75_TV_MCF7_3_Mn2L2Pt"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)
col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD051376 5 氧化 ####
info<-list(file="Completed/PXD051376/sub_MCF7/Oxidation (M)Sites.txt",
           out.file="PXD051376.O.MCF7-PtDAPCl2.xlsx",
           celline="MCF7",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="oxidation",
           drug="PtDAPCl2", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 65_TV_MCF7_1_PtDAPCl2", "Intensity 70_TV_MCF7_2_PtDAPCl2", "Intensity 76_TV_MCF7_3_PtDAPCl2"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)

res.ac<-get_stat_table(info = info)
res.f.ac<-filter_table(res.ac)

### PXD051376 6 氧化 ####
info<-list(file="Completed/PXD051376/sub_MCF7/Oxidation (M)Sites.txt",
           out.file="PXD051376.O.MCF7-Mn2L2.xlsx",
           celline="MCF7",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="oxidation",
           drug="Mn2L2", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 64_TV_MCF7_1_Mn2L2", "Intensity 71_TV_MCF7_2_Mn2L2", "Intensity 78_TV_MCF7_3_Mn2L2"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)

res.ac<-get_stat_table(info = info)
res.f.ac<-filter_table(res.ac)





### PXD051376 7 MCF10A ####
info<-list(file="Completed/PXD051376/sub_MCF10A/Acetyl (K)Sites.txt",
           out.file="PXD051376.Ac.MCF10A-Mn2L2Pt.xlsx",
           celline="MCF10A",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="acetylation",
           drug="Mn2L2Pt", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 67_TV_MCF7_1_Mn2L2Pt", "Intensity 68_TV_MCF7_2_Mn2L2Pt", "Intensity 75_TV_MCF7_3_Mn2L2Pt"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)
col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD051376 8 MCF10A ####
info<-list(file="Completed/PXD051376/sub_MCF7/Acetyl (K)Sites.txt",
           out.file="PXD051376.Ac.MCF10A-PtDAPCl2.xlsx",
           celline="MCF10A",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="acetylation",
           drug="PtDAPCl2", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 65_TV_MCF7_1_PtDAPCl2", "Intensity 70_TV_MCF7_2_PtDAPCl2", "Intensity 76_TV_MCF7_3_PtDAPCl2"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)

res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD051376 9 MCF10A ####
info<-list(file="Completed/PXD051376/sub_MCF7/Acetyl (K)Sites.txt",
           out.file="PXD051376.Ac.MCF10A-Mn2L2.xlsx",
           celline="MCF10A",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="acetylation",
           drug="Mn2L2", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 64_TV_MCF7_1_Mn2L2", "Intensity 71_TV_MCF7_2_Mn2L2", "Intensity 78_TV_MCF7_3_Mn2L2"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)

res<-get_stat_table(info = info)
res.f<-filter_table(res)



### PXD051376 7 MCF10A 氧化 ####
info<-list(file="Completed/PXD051376/sub_MCF10A/Oxidation (M)Sites.txt",
           out.file="PXD051376.O.MCF10A-Mn2L2Pt.xlsx",
           celline="MCF10A",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="oxidation",
           drug="Mn2L2Pt", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 67_TV_MCF7_1_Mn2L2Pt", "Intensity 68_TV_MCF7_2_Mn2L2Pt", "Intensity 75_TV_MCF7_3_Mn2L2Pt"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)
col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD051376 8 MCF10A 氧化  ####
info<-list(file="Completed/PXD051376/sub_MCF7/Oxidation (M)Sites.txt",
           out.file="PXD051376.O.MCF10A-PtDAPCl2.xlsx",
           celline="MCF10A",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="oxidation",
           drug="PtDAPCl2", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 65_TV_MCF7_1_PtDAPCl2", "Intensity 70_TV_MCF7_2_PtDAPCl2", "Intensity 76_TV_MCF7_3_PtDAPCl2"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)

res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD051376 9 MCF10A 氧化  ####
info<-list(file="Completed/PXD051376/sub_MCF7/Oxidation (M)Sites.txt",
           out.file="PXD051376.O.MCF10A-Mn2L2.xlsx",
           celline="MCF10A",
           disease="Breast Cancer",
           disease.sub="", 
           ptm="oxidation",
           drug="Mn2L2", # Mn2L2Ac,Mn2L2,PtDAPCl2,
           exp.col=c("Intensity 64_TV_MCF7_1_Mn2L2", "Intensity 71_TV_MCF7_2_Mn2L2", "Intensity 78_TV_MCF7_3_Mn2L2"),
           ctl.col=c("Intensity 63_TV_MCF7_1_CON", "Intensity 72_TV_MCF7_2_CON", "Intensity 77_TV_MCF7_3_CON")
)

res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD000065 1       ####
info<-list(file="Completed/PXD000065/Phospho (STY)Sites.txt",
           out.file="PXD000065.P.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="phosphorylation",
           drug="Gefitinib",
           exp.col=c("Reporter intensity corrected 3 IPG37-49_whole-cell", "Reporter intensity corrected 4 IPG37-49_whole-cell",
                     "Reporter intensity corrected 5 IPG37-49_whole-cell", "Reporter intensity corrected 6 IPG37-49_whole-cell",
                     "Reporter intensity corrected 7 IPG37-49_whole-cell", "Reporter intensity corrected 8 IPG37-49_whole-cell"),
           ctl.col=c("Reporter intensity corrected 1 IPG37-49_whole-cell", "Reporter intensity corrected 2 IPG37-49_whole-cell")
)
processed_data <- merge_TechRep(info)

col<-get_col(info,data = processed_data,correct = TRUE)
res<-get_stat_table(info = info,data = processed_data)
res.f<-filter_table(res)

### PXD000065 2 4h-ctl       ####
info<-list(file="Completed/PXD000065/Phospho (STY)Sites.txt",
           out.file="PXD000065.P.4exp-ctl.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="phosphorylation",
           drug="Gefitinib",
           exp.col=c("Reporter intensity corrected 3 IPG37-49_whole-cell", "Reporter intensity corrected 4 IPG37-49_whole-cell",
                     "Reporter intensity corrected 5 IPG37-49_whole-cell", "Reporter intensity corrected 6 IPG37-49_whole-cell"),
           ctl.col=c("Reporter intensity corrected 1 IPG37-49_whole-cell", "Reporter intensity corrected 2 IPG37-49_whole-cell")
)
res<-get_stat_table(info = info,data = processed_data)
res.f<-filter_table(res)

### PXD000065 3  氧化   ####
info<-list(file="Completed/PXD000065/Oxidation (M)Sites.txt",
           out.file="PXD000065.O.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="oxidation",
           drug="Gefitinib",
           exp.col=c("Reporter intensity corrected 3 IPG37-49_whole-cell", "Reporter intensity corrected 4 IPG37-49_whole-cell",
                     "Reporter intensity corrected 5 IPG37-49_whole-cell", "Reporter intensity corrected 6 IPG37-49_whole-cell",
                     "Reporter intensity corrected 7 IPG37-49_whole-cell", "Reporter intensity corrected 8 IPG37-49_whole-cell"),
           ctl.col=c("Reporter intensity corrected 1 IPG37-49_whole-cell", "Reporter intensity corrected 2 IPG37-49_whole-cell")
)

processed_data <- merge_TechRep(info)
col<-get_col(info,data = processed_data,correct = TRUE)
res<-get_stat_table(info = info,data = processed_data)
res.f<-filter_table(res)

### PXD000065 4 4h-ctl氧化   ####
info<-list(file="Completed/PXD000065/Oxidation (M)Sites.txt",
           out.file="PXD000065.O.4exp-ctl.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="oxidation",
           drug="Gefitinib",
           exp.col=c("Reporter intensity corrected 3 IPG37-49_whole-cell", "Reporter intensity corrected 4 IPG37-49_whole-cell",
                     "Reporter intensity corrected 5 IPG37-49_whole-cell", "Reporter intensity corrected 6 IPG37-49_whole-cell"),
           ctl.col=c("Reporter intensity corrected 1 IPG37-49_whole-cell", "Reporter intensity corrected 2 IPG37-49_whole-cell")
)

processed_data <- merge_TechRep(info)
col<-get_col(info,data = processed_data,correct = TRUE)
res<-get_stat_table(info = info,data = processed_data)
res.f<-filter_table(res)










### PXD000681 1 磷酸化  ####


info<-list(file="Completed/PXD000681/Phospho (STY)Sites.txt",
           out.file="PXD000681.P.Bos.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="phosphorylation",
           drug="Bosutinib",
           exp.col=c("Intensity M Exp1_CtBosNil","Intensity M Exp2_CtBosNil"),
           ctl.col=c("Intensity L Exp1_CtBosNil","Intensity L Exp2_CtBosNil")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD000681 2 磷酸化  ####

info<-list(file="Completed/PXD000681/Phospho (STY)Sites.txt",
           out.file="PXD000681.P.Nil.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="phosphorylation",
           drug="Bosutinib",
           exp.col=c("Intensity H Exp1_CtBosNil","Intensity H Exp2_CtBosNil"),
           ctl.col=c("Intensity L Exp1_CtBosNil","Intensity L Exp2_CtBosNil")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD000681 3 磷酸化  ####

info<-list(file="Completed/PXD000681/Phospho (STY)Sites.txt",
           out.file="PXD000681.P.Ima.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="phosphorylation",
           drug="Imatinib",
           exp.col=c("Intensity M Exp1_CtmaDas","Intensity M Exp2_CtlmaDas"),
           ctl.col=c("Intensity L Exp1_CtmaDas","Intensity L Exp2_CtlmaDas")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD000681 4 磷酸化  ####

info<-list(file="Completed/PXD000681/Phospho (STY)Sites.txt",
           out.file="PXD000681.P.Das.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="phosphorylation",
           drug="Dasatinib",
           exp.col=c("Intensity H Exp1_CtmaDas","Intensity H Exp2_CtlmaDas"),
           ctl.col=c("Intensity L Exp1_CtmaDas","Intensity L Exp2_CtlmaDas")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)









### PXD000681 5 磷酸化  ####


info<-list(file="Completed/PXD000681/Oxidation (M)Sites.txt",
           out.file="PXD000681.O.Bos.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="oxidation",
           drug="Bosutinib",
           exp.col=c("Intensity M Exp1_CtBosNil","Intensity M Exp2_CtBosNil"),
           ctl.col=c("Intensity L Exp1_CtBosNil","Intensity L Exp2_CtBosNil")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD000681 6 磷酸化  ####

info<-list(file="Completed/PXD000681/Oxidation (M)Sites.txt",
           out.file="PXD000681.O.Nil.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="oxidation",
           drug="Bosutinib",
           exp.col=c("Intensity H Exp1_CtBosNil","Intensity H Exp2_CtBosNil"),
           ctl.col=c("Intensity L Exp1_CtBosNil","Intensity L Exp2_CtBosNil")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD000681 7 磷酸化  ####

info<-list(file="Completed/PXD000681/Oxidation (M)Sites.txt",
           out.file="PXD000681.O.Ima.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="oxidation",
           drug="Imatinib",
           exp.col=c("Intensity M Exp1_CtmaDas","Intensity M Exp2_CtlmaDas"),
           ctl.col=c("Intensity L Exp1_CtmaDas","Intensity L Exp2_CtlmaDas")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD000681 8 磷酸化  ####

info<-list(file="Completed/PXD000681/Oxidation (M)Sites.txt",
           out.file="PXD000681.O.Das.xlsx",
           celline="A431",
           disease="Epidermoid Carcinoma",
           disease.sub="", 
           ptm="phosphorylation",
           drug="oxidation",
           exp.col=c("Intensity H Exp1_CtmaDas","Intensity H Exp2_CtlmaDas"),
           ctl.col=c("Intensity L Exp1_CtmaDas","Intensity L Exp2_CtlmaDas")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)










### PXD051299 1 磷酸化  ####
# Sorafenib	HepG2


info<-list(file="Completed/PXD051299/Phospho (STY)Sites.txt",
           out.file="PXD051299.P.xlsx",
           celline="HepG2",
           disease="Liver Cancer",
           disease.sub="", 
           ptm="phosphorylation",
           drug="Sorafenib",
           exp.col=c("Intensity SRF_1_15","Intensity SRF_2_16","Intensity SRF_3_17"),
           ctl.col=c("Intensity Untreated_1_06", "Intensity Untreated_2_07", "Intensity Untreated_3_08")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)
### PXD051299 2 氧化  ####
# Sorafenib	HepG2


info<-list(file="Completed/PXD051299/Oxidation (M)Sites.txt",
           out.file="PXD051299.O.xlsx",
           celline="HepG2",
           disease="Liver Cancer",
           disease.sub="", 
           ptm="oxidation",
           drug="Sorafenib",
           exp.col=c("Intensity SRF_1_15","Intensity SRF_2_16","Intensity SRF_3_17"),
           ctl.col=c("Intensity Untreated_1_06", "Intensity Untreated_2_07", "Intensity Untreated_3_08")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)



### PXD001101 1 H1975磷酸化  ####
# erlotinib	H3255,H1975 
# 


info<-list(file="Completed/PXD001101/sub_H1975/Phospho (STY)Sites.txt",
           out.file="PXD001101.P.H1975.xlsx",
           celline="H1975",
           disease="Lung Cancer", #NSCLC
           disease.sub="NSCLC", 
           ptm="phosphorylation",
           drug="Erlotinib",
           exp.col=c("Intensity M H1975_pST_BR1","Intensity M H1975_pST_BR2","Intensity M H1975_pST_BR3"),
           ctl.col=c("Intensity L H1975_pST_BR1","Intensity L H1975_pST_BR2","Intensity L H1975_pST_BR3")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)
### PXD001101 2 H1975磷酸化  ####
# erlotinib	H3255,H1975 
# 


info<-list(file="Completed/PXD001101/sub_H1975/Phospho (STY)Sites.txt",
           out.file="PXD001101.P.H1975-EGF.xlsx",
           celline="H1975",
           disease="Lung Cancer", #NSCLC
           disease.sub="NSCLC", 
           ptm="phosphorylation",
           drug="Erlotinib + EGF",
           exp.col=c("Intensity H H1975_pST_BR1","Intensity H H1975_pST_BR2","Intensity H H1975_pST_BR3"),
           ctl.col=c("Intensity L H1975_pST_BR1","Intensity L H1975_pST_BR2","Intensity L H1975_pST_BR3")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)


### PXD001101 3 H1975氧化  ####
# erlotinib	H3255,H1975 
# 


info<-list(file="Completed/PXD001101/sub_H1975/Oxidation (M)Sites.txt",
           out.file="PXD001101.O.H1975.xlsx",
           celline="H1975",
           disease="Lung Cancer", #NSCLC
           disease.sub="NSCLC", 
           ptm="oxidation",
           drug="Erlotinib",
           exp.col=c("Intensity M H1975_pST_BR1","Intensity M H1975_pST_BR2","Intensity M H1975_pST_BR3"),
           ctl.col=c("Intensity L H1975_pST_BR1","Intensity L H1975_pST_BR2","Intensity L H1975_pST_BR3")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)
### PXD001101 4 H1975氧化  ####
# erlotinib	H3255,H1975 
# 


info<-list(file="Completed/PXD001101/sub_H1975/Oxidation (M)Sites.txt",
           out.file="PXD001101.O.H1975-EGF.xlsx",
           celline="H1975",
           disease="Lung Cancer", #NSCLC
           disease.sub="NSCLC", 
           ptm="oxidation",
           drug="Erlotinib + EGF",
           exp.col=c("Intensity H H1975_pST_BR1","Intensity H H1975_pST_BR2","Intensity H H1975_pST_BR3"),
           ctl.col=c("Intensity L H1975_pST_BR1","Intensity L H1975_pST_BR2","Intensity L H1975_pST_BR3")
)

col<-get_col(info)
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### PXD000861 1 磷酸化 耐药-正常  ####

info<-list(file="Completed/PXD000861/sub_seprep/Phospho (STY)Sites.txt",
           out.file="PXD000861.P.PC9IR-PC9.xlsx",
           celline="PC9",
           disease="Lung Cancer", 
           disease.sub="NSCLC", 
           ptm="phosphorylation",
           drug="Gefitinib",
           exp.col=c("Intensity PC9IR-1","Intensity PC9IR-2","Intensity PC9IR-3"),
           ctl.col=c("Intensity PC9-1","Intensity PC9-2","Intensity PC9-3")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "PC9耐药细胞系PC9IR对比PC细胞系")
res.f<-filter_table(res)

### PXD000861 2 磷酸化 耐药加药-基底  ####

info<-list(file="Completed/PXD000861/sub_seprep/Phospho (STY)Sites.txt",
           out.file="PXD000861.P.PC9IR.xlsx",
           celline="PC9IR",
           disease="Lung Cancer", 
           disease.sub="NSCLC", 
           ptm="phosphorylation",
           drug="Gefitinib",
           exp.col=c("Intensity PC9IR-Gef10-1", "Intensity PC9IR-Gef10-2", "Intensity PC9IR-Gef10-3",
                     "Intensity PC9IR-Gef20-1", "Intensity PC9IR-Gef20-2", "Intensity PC9IR-Gef20-3"),
           ctl.col=c("Intensity PC9IR-Gef0-1",  "Intensity PC9IR-Gef0-2","Intensity PC9IR-Gef0-3")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "PC9耐药细胞系加药对比基底")
res.f<-filter_table(res)


### PXD000861 3 氧化 耐药-正常  ####

info<-list(file="Completed/PXD000861/sub_seprep/Oxidation (M)Sites.txt",
           out.file="PXD000861.O.PC9IR-PC9.xlsx",
           celline="PC9",
           disease="Lung Cancer", 
           disease.sub="NSCLC", 
           ptm="oxidation",
           drug="Gefitinib",
           exp.col=c("Intensity PC9IR-1","Intensity PC9IR-2","Intensity PC9IR-3"),
           ctl.col=c("Intensity PC9-1","Intensity PC9-2","Intensity PC9-3")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "PC9耐药细胞系PC9IR对比PC细胞系")
res.f<-filter_table(res)

### PXD000861 4 氧化 耐药加药-基底  ####

info<-list(file="Completed/PXD000861/sub_seprep/Oxidation (M)Sites.txt",
           out.file="PXD000861.O.PC9IR.xlsx",
           celline="PC9IR",
           disease="Lung Cancer", 
           disease.sub="NSCLC", 
           ptm="oxidation",
           drug="Gefitinib",
           exp.col=c("Intensity PC9IR-Gef10-1", "Intensity PC9IR-Gef10-2", "Intensity PC9IR-Gef10-3",
                     "Intensity PC9IR-Gef20-1", "Intensity PC9IR-Gef20-2", "Intensity PC9IR-Gef20-3"),
           ctl.col=c("Intensity PC9IR-Gef0-1",  "Intensity PC9IR-Gef0-2","Intensity PC9IR-Gef0-3")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "PC9耐药细胞系加药对比基底")
res.f<-filter_table(res)





### PXD001812 1 磷酸化 耐药-正常  ####
# Tamoxifen	MCF7,MCF7-CTRL,MCF7-TamR	SILAC	Breast cancer

info<-list(file="Completed/PXD001812/Phospho (STY)Sites.txt",
           out.file="PXD001812.P.MCF7.xlsx",
           celline="MCF7",
           disease="Breast Cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="Tamoxifen",
           exp.col=c("Intensity L TiO2 Replicate1","Intensity L TiO2 Replicate2",
                     "Intensity L anti-pY Replicate1","Intensity L anti-pY Replicate2"),
           ctl.col=c("Intensity H TiO2 Replicate1","Intensity H TiO2 Replicate2",
                     "Intensity H anti-pY Replicate1","Intensity H anti-pY Replicate2")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "pY+STY耐药 对比 pY+STY对照")
res.f<-filter_table(res)

### PXD001812 2 氧化 耐药-正常  ####
# Tamoxifen	MCF7,MCF7-CTRL,MCF7-TamR	SILAC	Breast cancer

info<-list(file="Completed/PXD001812/Oxidation (M)Sites.txt",
           out.file="PXD001812.O.MCF7.xlsx",
           celline="MCF7",
           disease="Breast Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="Tamoxifen",
           exp.col=c("Intensity L TiO2 Replicate1","Intensity L TiO2 Replicate2",
                     "Intensity L anti-pY Replicate1","Intensity L anti-pY Replicate2"),
           ctl.col=c("Intensity H TiO2 Replicate1","Intensity H TiO2 Replicate2",
                     "Intensity H anti-pY Replicate1","Intensity H anti-pY Replicate2")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "pY+STY耐药 对比 pY+STY对照")
res.f<-filter_table(res)

### PXD001812 1 乙酰化  ####
# Tamoxifen	MCF7,MCF7-CTRL,MCF7-TamR	SILAC	Breast cancer

info<-list(file="Completed/PXD003655/Acetyl (K)Sites.txt",
           out.file="PXD003655.Ac.short-treat.xlsx",
           celline="HeLa",
           disease="Inflammation", 
           disease.sub="pain, inflammation and fever", 
           ptm="acetylation",
           drug="Aspirin",
           exp.col=c("Intensity M MixD","Intensity M MixE",
                     "Intensity H MixD","Intensity H MixE",
                     "Intensity M MixF"),
           ctl.col=c("Intensity L MixD","Intensity L MixE","Intensity L MixF","Intensity L MixG","Intensity L MixH")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "阿司匹林的机制,treat 小于4h,no disease")
res.f<-filter_table(res)
### PXD001812 2 乙酰化  ####
# Tamoxifen	MCF7,MCF7-CTRL,MCF7-TamR	SILAC	Breast cancer

info<-list(file="Completed/PXD003655/Acetyl (K)Sites.txt",
           out.file="PXD003655.Ac.long-treat.xlsx",
           celline="HeLa",
           disease="Inflammation", 
           disease.sub="pain, inflammation and fever", 
           ptm="acetylation",
           drug="Aspirin",
           exp.col=c("Intensity M MixG","Intensity M MixG",
                     "Intensity H MixH","Intensity H MixH",
                     "Intensity H MixF"),
           ctl.col=c("Intensity L MixD","Intensity L MixE","Intensity L MixF","Intensity L MixG","Intensity L MixH")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "阿司匹林的机制,treat 大于4h,no disease")
res.f<-filter_table(res)

### PXD004541 1  #######
# TH1579	BJ Ras Sv40	TMT	Breast cancer

info<-list(file="Completed/PXD004541/Phospho (STY)Sites.txt",
           out.file="PXD004541.P.xlsx",
           celline="BJ Ras Sv40",
           disease="Breast Cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="TH1579",
           exp.col=c("Intensity Drug1", "Intensity Drug2" ),
           ctl.col=c("Intensity DMSO1", "Intensity DMSO2")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "MTH1抑制剂处理对比对照")
res.f<-filter_table(res)
### PXD004541 2  氧化  #######
# TH1579	BJ Ras Sv40	TMT	Breast cancer

info<-list(file="Completed/PXD004541/Oxidation (M)Sites.txt",
           out.file="PXD004541.O.xlsx",
           celline="BJ Ras Sv40",
           disease="Breast Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="TH1579",
           exp.col=c("Intensity Drug1", "Intensity Drug2" ),
           ctl.col=c("Intensity DMSO1", "Intensity DMSO2")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "MTH1抑制剂处理对比对照")
res.f<-filter_table(res)

### PXD004941 1  #######
# Gefitinib	NSCLC 细胞 PC9/GR（吉非替尼耐药）和 PC9（吉非替尼敏感）	SILAC	Lung cancer


info<-list(file="Completed/PXD004941/GlyGly (K)Sites.txt",
           out.file="PXD004941.U.xlsx",
           celline="PC9/GR",
           disease="Lung Cancer", 
           disease.sub="NSCLC", 
           ptm="ubiquitylation",
           drug="Gefitinib",
           exp.col=c("Intensity L"),
           ctl.col=c("Intensity H")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = "GlyGly (K)Sites 无样本重复")
res.f<-filter_table(res)

### PXD004941 2  氧化  #######
# Gefitinib	NSCLC 细胞 PC9/GR（吉非替尼耐药）和 PC9（吉非替尼敏感）	SILAC	Lung cancer


info<-list(file="Completed/PXD004941/Oxidation (M)Sites.txt",
           out.file="PXD004941.O.xlsx",
           celline="PC9/GR",
           disease="Lung Cancer", 
           disease.sub="NSCLC", 
           ptm="oxidation",
           drug="Gefitinib",
           exp.col=c("Intensity L"),
           ctl.col=c("Intensity H")
)

col<-get_col(info)
res<-get_stat_table(info = info,note = " 无样本重复")
res.f<-filter_table(res)

### PXD005514 1  #######
# palbociclib	wt-MCF7,MCF7-LTED	


info<-list(file="Completed/PXD005514/Phospho (STY)Sites.txt",
           out.file="PXD005514.P.MCF7.xlsx",
           celline="MCF7",
           disease="Breast Cancer", 
           disease.sub="ER+", 
           ptm="phosphorylation",
           drug="palbociclib",
           exp.col=c("Intensity MCF7_wt_991R_B1_IMAC_1",   "Intensity MCF7_wt_991R_B1_IMAC_2" , 
                     "Intensity MCF7_wt_991R_B1_IMAC_3",   "Intensity MCF7_wt_991R_B2_IMAC_1" , 
                     "Intensity MCF7_wt_991R_B2_IMAC_2",   "Intensity MCF7_wt_991R_B2_IMAC_3" ,
                     "Intensity MCF7_wt_991R_B3_IMAC_1",   "Intensity MCF7_wt_991R_B3_IMAC_2",
                     "Intensity MCF7_wt_991R_B3_IMAC_3"),
           ctl.col=c("Intensity MCF7_wt_A1_IMAC_1" ,      
                     "Intensity MCF7_wt_A1_IMAC_2",        "Intensity MCF7_wt_A1_IMAC_3" ,      
                     "Intensity MCF7_wt_A2_IMAC_1" ,       "Intensity MCF7_wt_A2_IMAC_2" ,      
                     "Intensity MCF7_wt_A2_IMAC_3" ,       "Intensity MCF7_wt_A3_IMAC_1" ,      
                     "Intensity MCF7_wt_A3_IMAC_2" ,       "Intensity MCF7_wt_A3_IMAC_3")
)

col<-get_col(info)
check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "耐药-基底")
res.f<-filter_table(res)

### PXD005514 2 氧化  #######
# palbociclib	wt-MCF7,MCF7-LTED	


info<-list(file="Completed/PXD005514/Oxidation (M)Sites.txt",
           out.file="PXD005514.O.MCF7.xlsx",
           celline="MCF7",
           disease="Breast Cancer", 
           disease.sub="ER+", 
           ptm="oxidation",
           drug="palbociclib",
           exp.col=c("Intensity MCF7_wt_991R_B1_IMAC_1",   "Intensity MCF7_wt_991R_B1_IMAC_2" , 
                     "Intensity MCF7_wt_991R_B1_IMAC_3",   "Intensity MCF7_wt_991R_B2_IMAC_1" , 
                     "Intensity MCF7_wt_991R_B2_IMAC_2",   "Intensity MCF7_wt_991R_B2_IMAC_3" ,
                     "Intensity MCF7_wt_991R_B3_IMAC_1",   "Intensity MCF7_wt_991R_B3_IMAC_2",
                     "Intensity MCF7_wt_991R_B3_IMAC_3"),
           ctl.col=c("Intensity MCF7_wt_A1_IMAC_1" ,      
                     "Intensity MCF7_wt_A1_IMAC_2",        "Intensity MCF7_wt_A1_IMAC_3" ,      
                     "Intensity MCF7_wt_A2_IMAC_1" ,       "Intensity MCF7_wt_A2_IMAC_2" ,      
                     "Intensity MCF7_wt_A2_IMAC_3" ,       "Intensity MCF7_wt_A3_IMAC_1" ,      
                     "Intensity MCF7_wt_A3_IMAC_2" ,       "Intensity MCF7_wt_A3_IMAC_3")
)

col<-get_col(info)
check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "耐药-基底")
res.f<-filter_table(res)


### PXD005514 3  MCF7-LTED #######
# palbociclib	wt-MCF7,MCF7-LTED	


info<-list(file="Completed/PXD005514/Phospho (STY)Sites.txt",
           out.file="PXD005514.P.MCF7-LTED.xlsx",
           celline="MCF7-LTED	",
           disease="Breast Cancer", 
           disease.sub="ER+", 
           ptm="phosphorylation",
           drug="palbociclib",
           exp.col=c("Intensity MCF7_LTED_991R_D1_IMAC_1", "Intensity MCF7_LTED_991R_D1_IMAC_2",                    
                     "Intensity MCF7_LTED_991R_D1_IMAC_3", "Intensity MCF7_LTED_991R_D2_IMAC_1",
                     "Intensity MCF7_LTED_991R_D2_IMAC_2", "Intensity MCF7_LTED_991R_D2_IMAC_3",
                     "Intensity MCF7_LTED_991R_D3_IMAC_1", "Intensity MCF7_LTED_991R_D3_IMAC_2",
                     "Intensity MCF7_LTED_991R_D3_IMAC_3"),
           ctl.col=c("Intensity MCF7_LTED_C1_IMAC_1" ,    
                     "Intensity MCF7_LTED_C1_IMAC_2" ,     "Intensity MCF7_LTED_C1_IMAC_3" ,    
                     "Intensity MCF7_LTED_C2_IMAC_1" ,     "Intensity MCF7_LTED_C2_IMAC_2" ,    
                     "Intensity MCF7_LTED_C2_IMAC_3" ,     "Intensity MCF7_LTED_C3_IMAC_1" ,    
                     "Intensity MCF7_LTED_C3_IMAC_2" ,     "Intensity MCF7_LTED_C3_IMAC_3")
)

col<-get_col(info)
# check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "MCF7-LTED	耐药-基底")
res.f<-filter_table(res)

### PXD005514 4 MCF7-LTED 氧化  #######
# palbociclib	wt-MCF7,MCF7-LTED	


info<-list(file="Completed/PXD005514/Oxidation (M)Sites.txt",
           out.file="PXD005514.O.MCF7-LTED.xlsx",
           celline="MCF7-LTED",
           disease="Breast Cancer", 
           disease.sub="ER+", 
           ptm="oxidation",
           drug="palbociclib",
           exp.col=c("Intensity MCF7_LTED_991R_D1_IMAC_1", "Intensity MCF7_LTED_991R_D1_IMAC_2",                    
                     "Intensity MCF7_LTED_991R_D1_IMAC_3", "Intensity MCF7_LTED_991R_D2_IMAC_1",
                     "Intensity MCF7_LTED_991R_D2_IMAC_2", "Intensity MCF7_LTED_991R_D2_IMAC_3",
                     "Intensity MCF7_LTED_991R_D3_IMAC_1", "Intensity MCF7_LTED_991R_D3_IMAC_2",
                     "Intensity MCF7_LTED_991R_D3_IMAC_3"),
           ctl.col=c("Intensity MCF7_LTED_C1_IMAC_1" ,    
                     "Intensity MCF7_LTED_C1_IMAC_2" ,     "Intensity MCF7_LTED_C1_IMAC_3" ,    
                     "Intensity MCF7_LTED_C2_IMAC_1" ,     "Intensity MCF7_LTED_C2_IMAC_2" ,    
                     "Intensity MCF7_LTED_C2_IMAC_3" ,     "Intensity MCF7_LTED_C3_IMAC_1" ,    
                     "Intensity MCF7_LTED_C3_IMAC_2" ,     "Intensity MCF7_LTED_C3_IMAC_3")
)

col<-get_col(info)
# check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "MCF7-LTED 耐药-基底")
res.f<-filter_table(res)


### PXD005536 1  #######
# Dasatinib,Pazopanib	A204 SILAC



info<-list(file="Completed/PXD005536/Phospho (STY)Sites.txt",
           out.file="PXD005536.P.Das.xlsx",
           celline="A204",
           disease="Rabdoid Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Dasatinib",
           exp.col=c("Intensity H DasR/Par B1","Intensity H DasR/Par B2","Intensity H DasR/Par B3"),
           ctl.col=c("Intensity L DasR/Par B1","Intensity L DasR/Par B2","Intensity L DasR/Par B3")
)

col<-get_col(info)
# check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "耐药-基底")
res.f<-filter_table(res)

### PXD005536 2 Pazopanib #######
# Dasatinib,Pazopanib	A204 SILAC



info<-list(file="Completed/PXD005536/Phospho (STY)Sites.txt",
           out.file="PXD005536.P.Paz.xlsx",
           celline="A204",
           disease="Rabdoid Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Pazopanib",
           exp.col=c("Intensity H PazR/Par B1","Intensity H PazR/Par B2","Intensity H PazR/Par B3"),
           ctl.col=c("Intensity L PazR/Par B1","Intensity L PazR/Par B2","Intensity L PazR/Par B3")
)

col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "耐药-基底")
res.f<-filter_table(res)




### PXD006139 1 0.006 #######
# H2228_abemaciclib_dose_response

info<-list(file="Completed/PXD006139/sub_TMT/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.TMT10-0.006abe.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Abemaciclib",
           exp.col=c("Reporter intensity corrected 2 TMT10_5REP1","Reporter intensity corrected 2 TMT10_5REP2"),
           ctl.col=c("Reporter intensity corrected 1 TMT10_5REP1","Reporter intensity corrected 1 TMT10_5REP2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

# check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "0.006 μM abemaciclib - DMSO")
res.f<-filter_table(res)

### PXD006139 2 0.06 #######
# H2228_abemaciclib_dose_response

info<-list(file="Completed/PXD006139/sub_TMT/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.TMT10-0.06abe.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Abemaciclib",
           exp.col=c("Reporter intensity corrected 3 TMT10_5REP1","Reporter intensity corrected 3 TMT10_5REP2"),
           ctl.col=c("Reporter intensity corrected 1 TMT10_5REP1","Reporter intensity corrected 1 TMT10_5REP2")
)

processed<-merge_TechRep(info =info)
# col<-get_col(info,correct = TRUE,data = processed)

# check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "0.06 μM abemaciclib - DMSO")
res.f<-filter_table(res)

### PXD006139 3 0.6 #######
# H2228_abemaciclib_dose_response

info<-list(file="Completed/PXD006139/sub_TMT/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.TMT10-0.6abe.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Abemaciclib",
           exp.col=c("Reporter intensity corrected 4 TMT10_5REP1","Reporter intensity corrected 4 TMT10_5REP2"),
           ctl.col=c("Reporter intensity corrected 1 TMT10_5REP1","Reporter intensity corrected 1 TMT10_5REP2")
)

processed<-merge_TechRep(info =info)
# col<-get_col(info,correct = TRUE,data = processed)

# check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "0.6 μM abemaciclib - DMSO")
res.f<-filter_table(res)
### PXD006139 4 6 #######
# H2228_abemaciclib_dose_response

info<-list(file="Completed/PXD006139/sub_TMT/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.TMT10-6abe.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Abemaciclib",
           exp.col=c("Reporter intensity corrected 5 TMT10_5REP1","Reporter intensity corrected 5 TMT10_5REP2"),
           ctl.col=c("Reporter intensity corrected 1 TMT10_5REP1","Reporter intensity corrected 1 TMT10_5REP2")
)

processed<-merge_TechRep(info =info)
# col<-get_col(info,correct = TRUE,data = processed)

# check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "6 μM abemaciclib - DMSO")
res.f<-filter_table(res)

### PXD006139 5 ALL DOSE abemaciclib #######
# H2228_abemaciclib_dose_response

info<-list(file="Completed/PXD006139/sub_TMT/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.TMT10-abe.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Abemaciclib",
           exp.col=c("Reporter intensity corrected 2 TMT10_5REP1","Reporter intensity corrected 2 TMT10_5REP2",
                     "Reporter intensity corrected 3 TMT10_5REP1","Reporter intensity corrected 3 TMT10_5REP2",
                     "Reporter intensity corrected 4 TMT10_5REP1","Reporter intensity corrected 4 TMT10_5REP2",
                     "Reporter intensity corrected 5 TMT10_5REP1","Reporter intensity corrected 5 TMT10_5REP2",
                     "Reporter intensity corrected 3 TMT10" ,      "Reporter intensity corrected 4 TMT10"      ,
                     "Reporter intensity corrected 5 TMT10" ,      "Reporter intensity corrected 6 TMT10"  ,    
                     "Reporter intensity corrected 7 TMT10"  ,     "Reporter intensity corrected 8 TMT10"  ,    
                     "Reporter intensity corrected 9 TMT10"  ,     "Reporter intensity corrected 10 TMT10"),
           ctl.col=c("Reporter intensity corrected 1 TMT10_5REP1","Reporter intensity corrected 1 TMT10_5REP2",
                     "Reporter intensity corrected 1 TMT10","Reporter intensity corrected 2 TMT10")
)

processed<-merge_TechRep(info =info)
# col<-get_col(info,correct = TRUE,data = processed)

# check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "diff dose abemaciclib - DMSO")
res.f<-filter_table(res)
### PXD006139 6 ALL DOSE abemaciclib 氧化 #######
# H2228_abemaciclib_dose_response

info<-list(file="Completed/PXD006139/sub_TMT/Oxidation (M)Sites.txt",
           out.file="PXD006139.O.TMT10-abe.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="oxidation",
           drug="Abemaciclib",
           exp.col=c("Reporter intensity corrected 2 TMT10_5REP1","Reporter intensity corrected 2 TMT10_5REP2",
                     "Reporter intensity corrected 3 TMT10_5REP1","Reporter intensity corrected 3 TMT10_5REP2",
                     "Reporter intensity corrected 4 TMT10_5REP1","Reporter intensity corrected 4 TMT10_5REP2",
                     "Reporter intensity corrected 5 TMT10_5REP1","Reporter intensity corrected 5 TMT10_5REP2",
                     "Reporter intensity corrected 3 TMT10" ,      "Reporter intensity corrected 4 TMT10"      ,
                     "Reporter intensity corrected 5 TMT10" ,      "Reporter intensity corrected 6 TMT10"  ,    
                     "Reporter intensity corrected 7 TMT10"  ,     "Reporter intensity corrected 8 TMT10"  ,    
                     "Reporter intensity corrected 9 TMT10"  ,     "Reporter intensity corrected 10 TMT10"),
           ctl.col=c("Reporter intensity corrected 1 TMT10_5REP1","Reporter intensity corrected 1 TMT10_5REP2",
                     "Reporter intensity corrected 1 TMT10","Reporter intensity corrected 2 TMT10")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

# check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "diff dose abemaciclib - DMSO")
res.f<-filter_table(res)

### PXD006139 1 LFQ H2228 数据 #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.H2228.LFQ.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Abemaciclib",
           exp.col=c("Intensity abemaciclib-1","Intensity abemaciclib-2","Intensity abemaciclib-3"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)
### PXD006139 2 LFQ H2228 Palbociclib #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.H2228.LFQ-Palbociclib.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Palbociclib",
           exp.col=c("Intensity Palbociclib-1", "Intensity Palbociclib-2"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006139 3 LFQ H2228 Trametinib #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.H2228.LFQ-Trametinib.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Trametinib",
           exp.col=c("Intensity Trametinib-1", "Intensity Trametinib-2","Intensity Trametinib-3"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006139 4 LFQ H2228 Trametinib #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.H2228.LFQ-BMS-777607.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="BMS-777607",
           exp.col=c("Intensity BMS777607-1",   "Intensity BMS777607-2",   "Intensity BMS777607-3"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006139 5 LFQ H2228 Dasatinib #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.H2228.LFQ-Dasatinib.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Dasatinib",
           exp.col=c("Intensity Dasatinib-1",   "Intensity Dasatinib-2",   "Intensity Dasatinib-3"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006139 6 LFQ-氧化 H2228 数据 #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Oxidation (M)Sites.txt",
           out.file="PXD006139.O.H2228.LFQ.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="oxidation",
           drug="Abemaciclib",
           exp.col=c("Intensity abemaciclib-1","Intensity abemaciclib-2","Intensity abemaciclib-3"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)
### PXD006139 7 LFQ-氧化 H2228 Palbociclib #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Oxidation (M)Sites.txt",
           out.file="PXD006139.O.H2228.LFQ-Palbociclib.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="oxidation",
           drug="Palbociclib",
           exp.col=c("Intensity Palbociclib-1", "Intensity Palbociclib-2"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006139 8 LFQ-氧化 H2228 Trametinib #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Oxidation (M)Sites.txt",
           out.file="PXD006139.O.H2228.LFQ-Trametinib.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="oxidation",
           drug="Trametinib",
           exp.col=c("Intensity Trametinib-1", "Intensity Trametinib-2","Intensity Trametinib-3"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006139 9 LFQ-氧化 H2228 Trametinib #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Oxidation (M)Sites.txt",
           out.file="PXD006139.O.H2228.LFQ-BMS-777607.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="oxidation",
           drug="BMS-777607",
           exp.col=c("Intensity BMS777607-1",   "Intensity BMS777607-2",   "Intensity BMS777607-3"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006139 10 LFQ-氧化 H2228 Dasatinib #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	H2228,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_H2228/Oxidation (M)Sites.txt",
           out.file="PXD006139.O.H2228.LFQ-Dasatinib.xlsx",
           celline="H2228",
           disease="Lung Cancer", 
           disease.sub="drug resistant", 
           ptm="oxidation",
           drug="Dasatinib",
           exp.col=c("Intensity Dasatinib-1",   "Intensity Dasatinib-2",   "Intensity Dasatinib-3"),
           ctl.col=c("Intensity DMSO-1"       , "Intensity DMSO-2"      ,  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006139 11 LFQ mouse-kidney 数据 #######
# GSK212	mouse-kidney细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_mouse-kidney/Phospho (STY)Sites.txt",
           out.file="PXD006139.P.HEK293.LFQ.xlsx",
           celline="HEK293T/17",
           disease="Cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="GSK212",
           exp.col=c("Intensity GSK212-1", "Intensity GSK212-2", "Intensity GSK212-3",
                     "Intensity GSK212-4","Intensity GSK212-5"),
           ctl.col=c("Intensity DMSO-1", "Intensity DMSO-2",  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006139 12 LFQ-氧化 mouse-kidney Dasatinib #######
# Abemaciclib,Palbociclib,Trametinib,BMS-777607,Dasatinib	mouse-kidney,DB细胞：具体细胞类型未明确说明	TMT/label-free


info<-list(file="Completed/PXD006139/sub_mouse-kidney/Oxidation (M)Sites.txt",
           out.file="PXD006139.O.HEK293.LFQ.xlsx",
           celline="HEK293T/17",
           disease="Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="GSK212",
           exp.col=c("Intensity GSK212-1", "Intensity GSK212-2", "Intensity GSK212-3",
                     "Intensity GSK212-4","Intensity GSK212-5"),
           ctl.col=c("Intensity DMSO-1", "Intensity DMSO-2",  "Intensity DMSO-3")
)

col<-get_col(info)
# check_indensity(info,col=col)

res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD003092 1  #######
# Ginsenoside Rg3	MDA-MB-231	TMT	Breast cancer

info<-list(file="Completed/PXD003092/Phospho (STY)Sites.txt",
           out.file="PXD003092.P.all.xlsx",
           celline="MDA-MB-231",
           disease="Breast cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Ginsenoside Rg3",
           exp.col=c("Reporter intensity corrected 2 1","Reporter intensity corrected 3 1",
                     "Reporter intensity corrected 5 1","Reporter intensity corrected 6 1"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 4 1")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)

### PXD003092 2  #######
# Ginsenoside Rg3	MDA-MB-231	TMT	Breast cancer

info<-list(file="Completed/PXD003092/Phospho (STY)Sites.txt",
           out.file="PXD003092.P.low-dose.xlsx",
           celline="MDA-MB-231",
           disease="Breast cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Ginsenoside Rg3",
           exp.col=c("Reporter intensity corrected 2 1","Reporter intensity corrected 5 1"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 4 1")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "low dosage")
res.f<-filter_table(res)

### PXD003092 3  #######
# Ginsenoside Rg3	MDA-MB-231	TMT	Breast cancer

info<-list(file="Completed/PXD003092/Phospho (STY)Sites.txt",
           out.file="PXD003092.P.high-dose.xlsx",
           celline="MDA-MB-231",
           disease="Breast cancer", 
           disease.sub="drug resistant", 
           ptm="phosphorylation",
           drug="Ginsenoside Rg3",
           exp.col=c("Reporter intensity corrected 3 1","Reporter intensity corrected 6 1"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 4 1")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "high dosage")
res.f<-filter_table(res)


### PXD003092 4 氧化  #######
# Ginsenoside Rg3	MDA-MB-231	TMT	Breast cancer

info<-list(file="Completed/PXD003092/Oxidation (M)Sites.txt",
           out.file="PXD003092.O.all.xlsx",
           celline="MDA-MB-231",
           disease="Breast cancer", 
           disease.sub="drug resistant", 
           ptm="oxidation",
           drug="Ginsenoside Rg3",
           exp.col=c("Reporter intensity corrected 2 1","Reporter intensity corrected 3 1",
                     "Reporter intensity corrected 5 1","Reporter intensity corrected 6 1"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 4 1")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)

### PXD003092 5  #######
# Ginsenoside Rg3	MDA-MB-231	TMT	Breast cancer

info<-list(file="Completed/PXD003092/Oxidation (M)Sites.txt",
           out.file="PXD003092.O.low-dose.xlsx",
           celline="MDA-MB-231",
           disease="Breast cancer", 
           disease.sub="drug resistant", 
           ptm="oxidation",
           drug="Ginsenoside Rg3",
           exp.col=c("Reporter intensity corrected 2 1","Reporter intensity corrected 5 1"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 4 1")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "low dosage")
res.f<-filter_table(res)

### PXD003092 6  #######
# Ginsenoside Rg3	MDA-MB-231	TMT	Breast cancer

info<-list(file="Completed/PXD003092/Oxidation (M)Sites.txt",
           out.file="PXD003092.O.high-dose.xlsx",
           celline="MDA-MB-231",
           disease="Breast cancer", 
           disease.sub="drug resistant", 
           ptm="oxidation",
           drug="Ginsenoside Rg3",
           exp.col=c("Reporter intensity corrected 3 1","Reporter intensity corrected 6 1"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 4 1")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "high dosage")
res.f<-filter_table(res)



### PXD006581 1  #######
# tofacitinib	骨髓基质细胞 （BMSC） Label free


info<-list(file="Completed/PXD006581/Phospho (STY)Sites.txt",
           out.file="PXD006581.P.xlsx",
           celline="BMSC",
           disease="Myeloma", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="Tofacitinib",
           exp.col=c( "Intensity Monocult","Intensity Tof cocult 1.5 hr","Intensity Tof cocult 24 hr" ),
           ctl.col=c("Intensity DMSO cocult")
)

col<-get_col(info)
# check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD006581 2 氧化 #######
# tofacitinib	骨髓基质细胞 （BMSC） Label free


info<-list(file="Completed/PXD006581/Oxidation (M)Sites.txt",
           out.file="PXD006581.O.xlsx",
           celline="BMSC",
           disease="Myeloma", 
           disease.sub="", 
           ptm="oxidation",
           drug="Tofacitinib",
           exp.col=c( "Intensity Monocult","Intensity Tof cocult 1.5 hr","Intensity Tof cocult 24 hr" ),
           ctl.col=c("Intensity DMSO cocult")
)

col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

# 


### PXD014786 1  #######
# T-DM1,trastuzumab	SKBR3	Spectrum count/molecular weight	Breast cancer
#Trastuzumab: Herceptin
#ctl: NT
#T-DM1: TDM1

info<-list(file="Completed/PXD014786/Phospho (STY)Sites.txt",
           out.file="PXD014786.P.Trastuzumab.xlsx",
           celline="SKBR3",
           disease="Breast Cancer", 
           disease.sub="HER2+", 
           ptm="phosphorylation",
           drug="Trastuzumab",
           exp.col=c("Intensity 7-31_HERCEPTIN", "Intensity 8-14_Herceptin", "Intensity 8-20_HERCEPTIN" ,"Intensity 8-24_Herceptin",
                     "Intensity 8-28_Herceptin"),
           ctl.col=c("Intensity 7-31_NT", "Intensity 8-14_NT", "Intensity 8-20_NT", "Intensity 8-24_NT", "Intensity 8-28_NT")
)

col<-get_col(info)
# check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD014786 2  #######
# T-DM1,trastuzumab	SKBR3	Spectrum count/molecular weight	Breast cancer
#Trastuzumab: Herceptin
#ctl: NT
#T-DM1: TDM1

info<-list(file="Completed/PXD014786/Phospho (STY)Sites.txt",
           out.file="PXD014786.P.TDM1.xlsx",
           celline="SKBR3",
           disease="Breast Cancer", 
           disease.sub="HER2+", 
           ptm="phosphorylation",
           drug="T-DM1",
           exp.col=c("Intensity 7-31_TDM1", "Intensity 8-14_TDM1" ,"Intensity 8-20_TDM1" ,
                     "Intensity 8-24_TDM1","Intensity 8-28_TDM1"),
           ctl.col=c("Intensity 7-31_NT", "Intensity 8-14_NT", "Intensity 8-20_NT", "Intensity 8-24_NT", "Intensity 8-28_NT")
)

col<-get_col(info)
# check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)


### PXD014786 3 Trastuzumab 氧化 #######
# T-DM1,trastuzumab	SKBR3	Spectrum count/molecular weight	Breast cancer
#Trastuzumab: Herceptin
#ctl: NT
#T-DM1: TDM1


info<-list(file="Completed/PXD014786/Oxidation (M)Sites.txt",
           out.file="PXD014786.O.Trastuzumab.xlsx",
           celline="SKBR3",
           disease="Breast Cancer", 
           disease.sub="HER2+", 
           ptm="oxidation",
           drug="Trastuzumab",
           exp.col=c("Intensity 7-31_HERCEPTIN", "Intensity 8-14_Herceptin", "Intensity 8-20_HERCEPTIN" ,"Intensity 8-24_Herceptin",
                     "Intensity 8-28_Herceptin"),
           ctl.col=c("Intensity 7-31_NT", "Intensity 8-14_NT", "Intensity 8-20_NT", "Intensity 8-24_NT", "Intensity 8-28_NT")
)

col<-get_col(info)
check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD014786 4 TDM1 氧化 #######
# T-DM1,trastuzumab	SKBR3	Spectrum count/molecular weight	Breast cancer
#Trastuzumab: Herceptin
#ctl: NT
#T-DM1: TDM1


info<-list(file="Completed/PXD014786/Oxidation (M)Sites.txt",
           out.file="PXD014786.O.TDM1.xlsx",
           celline="SKBR3",
           disease="Breast Cancer", 
           disease.sub="HER2+", 
           ptm="oxidation",
           drug="T-DM1",
           exp.col=c("Intensity 7-31_TDM1", "Intensity 8-14_TDM1" ,"Intensity 8-20_TDM1" ,
                     "Intensity 8-24_TDM1","Intensity 8-28_TDM1"),
           ctl.col=c("Intensity 7-31_NT", "Intensity 8-14_NT", "Intensity 8-20_NT", "Intensity 8-24_NT", "Intensity 8-28_NT")
)

col<-get_col(info)
check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)



### PXD018929 1 MCF10A 氧化 #######
# SU212	MCF10A,MCF12A,MDA-MB-231,MDA-MB-468	TMT	Breast cancer

info<-list(file="Completed/PXD018929/sub_10a/Oxidation (M)Sites.txt",
           out.file="PXD018929.O.MCF10A.xlsx",
           celline="MCF10A",
           disease="Breast cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SU212",
           exp.col=c( "Reporter intensity corrected 1 3","Reporter intensity corrected 2 3",
                      "Reporter intensity corrected 3 3"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 1 2",
                     "Reporter intensity corrected 2 1","Reporter intensity corrected 2 2",
                     "Reporter intensity corrected 3 1","Reporter intensity corrected 3 2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)

### PXD018929 2 MCF12A 氧化 #######
# SU212	MCF10A,MCF12A,MDA-MB-231,MDA-MB-468	TMT	Breast cancer

info<-list(file="Completed/PXD018929/sub_12a/Oxidation (M)Sites.txt",
           out.file="PXD018929.O.MCF12A.xlsx",
           celline="MCF12A",
           disease="Breast cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SU212",
           exp.col=c( "Reporter intensity corrected 1 3","Reporter intensity corrected 2 3",
                      "Reporter intensity corrected 3 3"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 1 2",
                     "Reporter intensity corrected 2 1","Reporter intensity corrected 2 2",
                     "Reporter intensity corrected 3 1","Reporter intensity corrected 3 2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)

### PXD018929 3 MDA-MB-231 氧化 #######
# SU212	MCF10A,MCF12A,MDA-MB-231,MDA-MB-468	TMT	Breast cancer

info<-list(file="Completed/PXD018929/sub_231/Oxidation (M)Sites.txt",
           out.file="PXD018929.O.231.xlsx",
           celline="MDA-MB-231",
           disease="Breast cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SU212",
           exp.col=c( "Reporter intensity corrected 1 3","Reporter intensity corrected 2 3",
                      "Reporter intensity corrected 3 3"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 1 2",
                     "Reporter intensity corrected 2 1","Reporter intensity corrected 2 2",
                     "Reporter intensity corrected 3 1","Reporter intensity corrected 3 2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)


### PXD018929 4 MDA-MB-468 氧化 #######
# SU212	MCF10A,MCF12A,MDA-MB-231,MDA-MB-468	TMT	Breast cancer

info<-list(file="Completed/PXD018929/sub_468/Oxidation (M)Sites.txt",
           out.file="PXD018929.O.468.xlsx",
           celline="MDA-MB-468",
           disease="Breast cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SU212",
           exp.col=c( "Reporter intensity corrected 1 3","Reporter intensity corrected 2 3",
                      "Reporter intensity corrected 3 3"),
           ctl.col=c("Reporter intensity corrected 1 1","Reporter intensity corrected 1 2",
                     "Reporter intensity corrected 2 1","Reporter intensity corrected 2 2",
                     "Reporter intensity corrected 3 1","Reporter intensity corrected 3 2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=col)
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)




### PXD023569 1  #######
# Cerulenin	RW480	Unknown	Colon cancer


info<-list(file="Completed/PXD023569/Phospho (STY)Sites.txt",
           out.file="PXD023569.P.xlsx",
           celline="RW480",
           disease="Colon cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="Cerulenin",
           exp.col=c( "Intensity ER_R1","Intensity ER_R2","Intensity ER_R3" ,
                      "Intensity ER_R4","Intensity ER_R5","Intensity ER_R6" ),
           ctl.col=c( "Intensity ontrol_R1", "Intensity ontrol_R2",
                      "Intensity ontrol_R3", "Intensity ontrol_R4" ,
                      "Intensity ontrol_R5", "Intensity ontrol_R6")
)

col<-get_col(info)
# check_indensity(info,col=col)
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD023569 2 氧化 #######
# tofacitinib	骨髓基质细胞 （BMSC） Label free


info<-list(file="Completed/PXD023569/Oxidation (M)Sites.txt",
           out.file="PXD023569.O.xlsx",
           celline="RW480",
           disease="Colon cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="Cerulenin",
           exp.col=c( "Intensity ER_R1","Intensity ER_R2","Intensity ER_R3" ,
                      "Intensity ER_R4","Intensity ER_R5","Intensity ER_R6" ),
           ctl.col=c( "Intensity ontrol_R1", "Intensity ontrol_R2",
                      "Intensity ontrol_R3", "Intensity ontrol_R4" ,
                      "Intensity ontrol_R5", "Intensity ontrol_R6")
)

col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)





### PXD031346 1  #######
# Differential network analysis of ROS1 inhibitors reveals lorlatinib polypharmacology: Phosphotyrosine Profiling	
# lorlatinib,cabozantinib,crizotinib,entrectinib		TMT	Lung cancer

# TMT 标签通道	对应组别	作用
# 1-2	crizotinib（重复 1-2）	4 种 TKI 处理的生物学重复
# 3-4	cabozantinib（重复 1-2）	
# 5-6	entrectinib（重复 1-2）	
# 7-8	lorlatinib（重复 1-2）	
# 9-10	DMSO（重复 1-2）	阴性对照的生物学重复
# 11	DMSO bulk	校准信号，归一化数据
info<-list(file="Completed/PXD031346/Phospho (STY)Sites.txt",
           out.file="PXD031346.P.Crizotinib.xlsx",
           celline="CUTO28",
           disease="Lung cancer", 
           disease.sub="ROS1-fusion-positive", 
           ptm="phosphorylation",
           drug="Crizotinib",
           exp.col=c("Reporter intensity corrected 1 1-pY_run1" , "Reporter intensity corrected 2 1-pY_run1",
                     "Reporter intensity corrected 1 1-pY_run2" , "Reporter intensity corrected 2 1-pY_run2",
                     "Reporter intensity corrected 1 2-pY_run1" , "Reporter intensity corrected 2 2-pY_run1",
                     "Reporter intensity corrected 1 2-pY_run2" , "Reporter intensity corrected 2 2-pY_run2"),
           
           ctl.col=c("Reporter intensity corrected 9 1-pY_run1" , "Reporter intensity corrected 10 1-pY_run1",
                     "Reporter intensity corrected 9 1-pY_run2" , "Reporter intensity corrected 10 1-pY_run2",
                     "Reporter intensity corrected 9 2-pY_run1" , "Reporter intensity corrected 10 2-pY_run1",
                     "Reporter intensity corrected 9 2-pY_run2" , "Reporter intensity corrected 10 2-pY_run2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Crizotinib - DMSO")
res.f<-filter_table(res)

### PXD031346 2 cabozantinib #######
# Differential network analysis of ROS1 inhibitors reveals lorlatinib polypharmacology: Phosphotyrosine Profiling	
# lorlatinib,cabozantinib,crizotinib,entrectinib		TMT	Lung cancer

# TMT 标签通道	对应组别	作用
# 1-2	crizotinib（重复 1-2）	4 种 TKI 处理的生物学重复
# 3-4	cabozantinib（重复 1-2）	
# 5-6	entrectinib（重复 1-2）	
# 7-8	lorlatinib（重复 1-2）	
# 9-10	DMSO（重复 1-2）	阴性对照的生物学重复
# 11	DMSO bulk	校准信号，归一化数据
info<-list(file="Completed/PXD031346/Phospho (STY)Sites.txt",
           out.file="PXD031346.P.Cabozantinib.xlsx",
           celline="CUTO28",
           disease="Lung cancer", 
           disease.sub="ROS1-fusion-positive", 
           ptm="phosphorylation",
           drug="Cabozantinib",
           exp.col=c("Reporter intensity corrected 3 1-pY_run1" , "Reporter intensity corrected 4 1-pY_run1",
                     "Reporter intensity corrected 3 1-pY_run2" , "Reporter intensity corrected 4 1-pY_run2",
                     "Reporter intensity corrected 3 2-pY_run1" , "Reporter intensity corrected 4 2-pY_run1",
                     "Reporter intensity corrected 3 2-pY_run2" , "Reporter intensity corrected 4 2-pY_run2"),
           
           ctl.col=c("Reporter intensity corrected 9 1-pY_run1" , "Reporter intensity corrected 10 1-pY_run1",
                     "Reporter intensity corrected 9 1-pY_run2" , "Reporter intensity corrected 10 1-pY_run2",
                     "Reporter intensity corrected 9 2-pY_run1" , "Reporter intensity corrected 10 2-pY_run1",
                     "Reporter intensity corrected 9 2-pY_run2" , "Reporter intensity corrected 10 2-pY_run2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Cabozantinib - DMSO")
res.f<-filter_table(res)

### PXD031346 3 entrectinib #######
# Differential network analysis of ROS1 inhibitors reveals lorlatinib polypharmacology: Phosphotyrosine Profiling	
# lorlatinib,cabozantinib,crizotinib,entrectinib		TMT	Lung cancer

# TMT 标签通道	对应组别	作用
# 1-2	crizotinib（重复 1-2）	4 种 TKI 处理的生物学重复
# 3-4	cabozantinib（重复 1-2）	
# 5-6	entrectinib（重复 1-2）	
# 7-8	lorlatinib（重复 1-2）	
# 9-10	DMSO（重复 1-2）	阴性对照的生物学重复
# 11	DMSO bulk	校准信号，归一化数据
info<-list(file="Completed/PXD031346/Phospho (STY)Sites.txt",
           out.file="PXD031346.P.Entrectinib.xlsx",
           celline="CUTO28",
           disease="Lung cancer", 
           disease.sub="ROS1-fusion-positive", 
           ptm="phosphorylation",
           drug="Entrectinib",
           exp.col=c("Reporter intensity corrected 5 1-pY_run1" , "Reporter intensity corrected 6 1-pY_run1",
                     "Reporter intensity corrected 5 1-pY_run2" , "Reporter intensity corrected 6 1-pY_run2",
                     "Reporter intensity corrected 5 2-pY_run1" , "Reporter intensity corrected 6 2-pY_run1",
                     "Reporter intensity corrected 5 2-pY_run2" , "Reporter intensity corrected 6 2-pY_run2"),
           
           ctl.col=c("Reporter intensity corrected 9 1-pY_run1" , "Reporter intensity corrected 10 1-pY_run1",
                     "Reporter intensity corrected 9 1-pY_run2" , "Reporter intensity corrected 10 1-pY_run2",
                     "Reporter intensity corrected 9 2-pY_run1" , "Reporter intensity corrected 10 2-pY_run1",
                     "Reporter intensity corrected 9 2-pY_run2" , "Reporter intensity corrected 10 2-pY_run2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Entrectinib - DMSO")
res.f<-filter_table(res)

### PXD031346 4 lorlatinib #######
# Differential network analysis of ROS1 inhibitors reveals lorlatinib polypharmacology: Phosphotyrosine Profiling	
# lorlatinib,cabozantinib,crizotinib,entrectinib		TMT	Lung cancer

# TMT 标签通道	对应组别	作用
# 1-2	crizotinib（重复 1-2）	4 种 TKI 处理的生物学重复
# 3-4	cabozantinib（重复 1-2）	
# 5-6	entrectinib（重复 1-2）	
# 7-8	lorlatinib（重复 1-2）	
# 9-10	DMSO（重复 1-2）	阴性对照的生物学重复
# 11	DMSO bulk	校准信号，归一化数据
info<-list(file="Completed/PXD031346/Phospho (STY)Sites.txt",
           out.file="PXD031346.P.Lorlatinib.xlsx",
           celline="CUTO28",
           disease="Lung cancer", 
           disease.sub="ROS1-fusion-positive", 
           ptm="phosphorylation",
           drug="Lorlatinib",
           exp.col=c("Reporter intensity corrected 7 1-pY_run1" , "Reporter intensity corrected 8 1-pY_run1",
                     "Reporter intensity corrected 7 1-pY_run2" , "Reporter intensity corrected 8 1-pY_run2",
                     "Reporter intensity corrected 7 2-pY_run1" , "Reporter intensity corrected 8 2-pY_run1",
                     "Reporter intensity corrected 7 2-pY_run2" , "Reporter intensity corrected 8 2-pY_run2"),
           
           ctl.col=c("Reporter intensity corrected 9 1-pY_run1" , "Reporter intensity corrected 10 1-pY_run1",
                     "Reporter intensity corrected 9 1-pY_run2" , "Reporter intensity corrected 10 1-pY_run2",
                     "Reporter intensity corrected 9 2-pY_run1" , "Reporter intensity corrected 10 2-pY_run1",
                     "Reporter intensity corrected 9 2-pY_run2" , "Reporter intensity corrected 10 2-pY_run2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Lorlatinib - DMSO")
res.f<-filter_table(res)



### PXD031346 5 氧化  #######
# Differential network analysis of ROS1 inhibitors reveals lorlatinib polypharmacology: Phosphotyrosine Profiling	
# lorlatinib,cabozantinib,crizotinib,entrectinib		TMT	Lung cancer

# TMT 标签通道	对应组别	作用
# 1-2	crizotinib（重复 1-2）	4 种 TKI 处理的生物学重复
# 3-4	cabozantinib（重复 1-2）	
# 5-6	entrectinib（重复 1-2）	
# 7-8	lorlatinib（重复 1-2）	
# 9-10	DMSO（重复 1-2）	阴性对照的生物学重复
# 11	DMSO bulk	校准信号，归一化数据
info<-list(file="Completed/PXD031346/Oxidation (M)Sites.txt",
           out.file="PXD031346.O.Crizotinib.xlsx",
           celline="CUTO28",
           disease="Lung cancer", 
           disease.sub="ROS1-fusion-positive", 
           ptm="oxidation",
           drug="Crizotinib",
           exp.col=c("Reporter intensity corrected 1 1-pY_run1" , "Reporter intensity corrected 2 1-pY_run1",
                     "Reporter intensity corrected 1 1-pY_run2" , "Reporter intensity corrected 2 1-pY_run2",
                     "Reporter intensity corrected 1 2-pY_run1" , "Reporter intensity corrected 2 2-pY_run1",
                     "Reporter intensity corrected 1 2-pY_run2" , "Reporter intensity corrected 2 2-pY_run2"),
           
           ctl.col=c("Reporter intensity corrected 9 1-pY_run1" , "Reporter intensity corrected 10 1-pY_run1",
                     "Reporter intensity corrected 9 1-pY_run2" , "Reporter intensity corrected 10 1-pY_run2",
                     "Reporter intensity corrected 9 2-pY_run1" , "Reporter intensity corrected 10 2-pY_run1",
                     "Reporter intensity corrected 9 2-pY_run2" , "Reporter intensity corrected 10 2-pY_run2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Crizotinib - DMSO")
res.f<-filter_table(res)

### PXD031346 6 氧化   cabozantinib #######
# Differential network analysis of ROS1 inhibitors reveals lorlatinib polypharmacology: Phosphotyrosine Profiling	
# lorlatinib,cabozantinib,crizotinib,entrectinib		TMT	Lung cancer

# TMT 标签通道	对应组别	作用
# 1-2	crizotinib（重复 1-2）	4 种 TKI 处理的生物学重复
# 3-4	cabozantinib（重复 1-2）	
# 5-6	entrectinib（重复 1-2）	
# 7-8	lorlatinib（重复 1-2）	
# 9-10	DMSO（重复 1-2）	阴性对照的生物学重复
# 11	DMSO bulk	校准信号，归一化数据
info<-list(file="Completed/PXD031346/Oxidation (M)Sites.txt",
           out.file="PXD031346.O.Cabozantinib.xlsx",
           celline="CUTO28",
           disease="Lung cancer", 
           disease.sub="ROS1-fusion-positive", 
           ptm="oxidation",
           drug="Cabozantinib",
           exp.col=c("Reporter intensity corrected 3 1-pY_run1" , "Reporter intensity corrected 4 1-pY_run1",
                     "Reporter intensity corrected 3 1-pY_run2" , "Reporter intensity corrected 4 1-pY_run2",
                     "Reporter intensity corrected 3 2-pY_run1" , "Reporter intensity corrected 4 2-pY_run1",
                     "Reporter intensity corrected 3 2-pY_run2" , "Reporter intensity corrected 4 2-pY_run2"),
           
           ctl.col=c("Reporter intensity corrected 9 1-pY_run1" , "Reporter intensity corrected 10 1-pY_run1",
                     "Reporter intensity corrected 9 1-pY_run2" , "Reporter intensity corrected 10 1-pY_run2",
                     "Reporter intensity corrected 9 2-pY_run1" , "Reporter intensity corrected 10 2-pY_run1",
                     "Reporter intensity corrected 9 2-pY_run2" , "Reporter intensity corrected 10 2-pY_run2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Cabozantinib - DMSO")
res.f<-filter_table(res)

### PXD031346 7 氧化   entrectinib #######
# Differential network analysis of ROS1 inhibitors reveals lorlatinib polypharmacology: Phosphotyrosine Profiling	
# lorlatinib,cabozantinib,crizotinib,entrectinib		TMT	Lung cancer

# TMT 标签通道	对应组别	作用
# 1-2	crizotinib（重复 1-2）	4 种 TKI 处理的生物学重复
# 3-4	cabozantinib（重复 1-2）	
# 5-6	entrectinib（重复 1-2）	
# 7-8	lorlatinib（重复 1-2）	
# 9-10	DMSO（重复 1-2）	阴性对照的生物学重复
# 11	DMSO bulk	校准信号，归一化数据
info<-list(file="Completed/PXD031346/Oxidation (M)Sites.txt",
           out.file="PXD031346.O.Entrectinib.xlsx",
           celline="CUTO28",
           disease="Lung cancer", 
           disease.sub="ROS1-fusion-positive", 
           ptm="oxidation",
           drug="Entrectinib",
           exp.col=c("Reporter intensity corrected 5 1-pY_run1" , "Reporter intensity corrected 6 1-pY_run1",
                     "Reporter intensity corrected 5 1-pY_run2" , "Reporter intensity corrected 6 1-pY_run2",
                     "Reporter intensity corrected 5 2-pY_run1" , "Reporter intensity corrected 6 2-pY_run1",
                     "Reporter intensity corrected 5 2-pY_run2" , "Reporter intensity corrected 6 2-pY_run2"),
           
           ctl.col=c("Reporter intensity corrected 9 1-pY_run1" , "Reporter intensity corrected 10 1-pY_run1",
                     "Reporter intensity corrected 9 1-pY_run2" , "Reporter intensity corrected 10 1-pY_run2",
                     "Reporter intensity corrected 9 2-pY_run1" , "Reporter intensity corrected 10 2-pY_run1",
                     "Reporter intensity corrected 9 2-pY_run2" , "Reporter intensity corrected 10 2-pY_run2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Entrectinib - DMSO")
res.f<-filter_table(res)

### PXD031346 8 氧化   lorlatinib #######
# Differential network analysis of ROS1 inhibitors reveals lorlatinib polypharmacology: Phosphotyrosine Profiling	
# lorlatinib,cabozantinib,crizotinib,entrectinib		TMT	Lung cancer

# TMT 标签通道	对应组别	作用
# 1-2	crizotinib（重复 1-2）	4 种 TKI 处理的生物学重复
# 3-4	cabozantinib（重复 1-2）	
# 5-6	entrectinib（重复 1-2）	
# 7-8	lorlatinib（重复 1-2）	
# 9-10	DMSO（重复 1-2）	阴性对照的生物学重复
# 11	DMSO bulk	校准信号，归一化数据
info<-list(file="Completed/PXD031346/Oxidation (M)Sites.txt",
           out.file="PXD031346.O.Lorlatinib.xlsx",
           celline="CUTO28",
           disease="Lung cancer", 
           disease.sub="ROS1-fusion-positive", 
           ptm="oxidation",
           drug="Lorlatinib",
           exp.col=c("Reporter intensity corrected 7 1-pY_run1" , "Reporter intensity corrected 8 1-pY_run1",
                     "Reporter intensity corrected 7 1-pY_run2" , "Reporter intensity corrected 8 1-pY_run2",
                     "Reporter intensity corrected 7 2-pY_run1" , "Reporter intensity corrected 8 2-pY_run1",
                     "Reporter intensity corrected 7 2-pY_run2" , "Reporter intensity corrected 8 2-pY_run2"),
           
           ctl.col=c("Reporter intensity corrected 9 1-pY_run1" , "Reporter intensity corrected 10 1-pY_run1",
                     "Reporter intensity corrected 9 1-pY_run2" , "Reporter intensity corrected 10 1-pY_run2",
                     "Reporter intensity corrected 9 2-pY_run1" , "Reporter intensity corrected 10 2-pY_run1",
                     "Reporter intensity corrected 9 2-pY_run2" , "Reporter intensity corrected 10 2-pY_run2")
)

processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)

check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Lorlatinib - DMSO")
res.f<-filter_table(res)

### PXD041324 1 pmc78 #######
# INFO: New ruthenium-cyclopentadienyl complexes affect colorectal cancer hallmarks showing high therapeutic potential
# INFO: PMC79、PMC78、LCR134和LCR220	RW480	label-free	Colorectal cancer

info<-list(file="Completed/PXD041324/Acetyl (K)Sites.txt",
           out.file="PXD041324.Ac.PMC78.xlsx",
           celline="RW480",
           disease="Colorectal Cancer", 
           disease.sub="", 
           ptm="acetylation",
           drug="PMC78",
           exp.col=c("Intensity pmc78_1" ,  "Intensity pmc78_2" ,  "Intensity pmc78_3"),
           ctl.col=c("Intensity CONTROL_1", "Intensity CONTROL_2", "Intensity CONTROL_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD041324 2 PMC79 #######
# INFO: New ruthenium-cyclopentadienyl complexes affect colorectal cancer hallmarks showing high therapeutic potential
# INFO: PMC79、PMC78、LCR134和LCR220	RW480	label-free	Colorectal cancer

info<-list(file="Completed/PXD041324/Acetyl (K)Sites.txt",
           out.file="PXD041324.Ac.PMC79.xlsx",
           celline="RW480",
           disease="Colorectal Cancer", 
           disease.sub="", 
           ptm="acetylation",
           drug="PMC79",
           exp.col=c("Intensity pmc79_1",   "Intensity pmc79_2" ,  "Intensity pmc79_3"),
           ctl.col=c("Intensity CONTROL_1", "Intensity CONTROL_2", "Intensity CONTROL_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)
### PXD041324 3 LCR134 #######
# INFO: New ruthenium-cyclopentadienyl complexes affect colorectal cancer hallmarks showing high therapeutic potential
# INFO: PMC79、PMC78、LCR134和LCR220	RW480	label-free	Colorectal cancer

info<-list(file="Completed/PXD041324/Acetyl (K)Sites.txt",
           out.file="PXD041324.Ac.LCR134.xlsx",
           celline="RW480",
           disease="Colorectal Cancer", 
           disease.sub="", 
           ptm="acetylation",
           drug="LCR134",
           exp.col=c("Intensity LCR134_1" ,"Intensity LCR134_2",  "Intensity LCR134_3"),
           ctl.col=c("Intensity CONTROL_1", "Intensity CONTROL_2", "Intensity CONTROL_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)
### PXD041324 4 LCR220 #######
# INFO: New ruthenium-cyclopentadienyl complexes affect colorectal cancer hallmarks showing high therapeutic potential
# INFO: PMC79、PMC78、LCR134和LCR220	RW480	label-free	Colorectal cancer

info<-list(file="Completed/PXD041324/Acetyl (K)Sites.txt",
           out.file="PXD041324.Ac.LCR220.xlsx",
           celline="RW480",
           disease="Colorectal Cancer", 
           disease.sub="", 
           ptm="acetylation",
           drug="LCR220",
           exp.col=c("Intensity LCR220_1",  "Intensity LCR220_2","Intensity LCR220_3"),
           ctl.col=c("Intensity CONTROL_1", "Intensity CONTROL_2", "Intensity CONTROL_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

# PXD041324
### PXD041324 5 氧化 pmc78 #######
# INFO: New ruthenium-cyclopentadienyl complexes affect colorectal cancer hallmarks showing high therapeutic potential
# INFO: PMC79、PMC78、LCR134和LCR220	RW480	label-free	Colorectal cancer

info<-list(file="Completed/PXD041324/Oxidation (M)Sites.txt",
           out.file="PXD041324.O.PMC78.xlsx",
           celline="RW480",
           disease="Colorectal Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="PMC78",
           exp.col=c("Intensity pmc78_1" ,  "Intensity pmc78_2" ,  "Intensity pmc78_3"),
           ctl.col=c("Intensity CONTROL_1", "Intensity CONTROL_2", "Intensity CONTROL_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD041324 6 氧化 PMC79 #######
# INFO: New ruthenium-cyclopentadienyl complexes affect colorectal cancer hallmarks showing high therapeutic potential
# INFO: PMC79、PMC78、LCR134和LCR220	RW480	label-free	Colorectal cancer

info<-list(file="Completed/PXD041324/Oxidation (M)Sites.txt",
           out.file="PXD041324.O.PMC79.xlsx",
           celline="RW480",
           disease="Colorectal Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="PMC79",
           exp.col=c("Intensity pmc79_1",   "Intensity pmc79_2" ,  "Intensity pmc79_3"),
           ctl.col=c("Intensity CONTROL_1", "Intensity CONTROL_2", "Intensity CONTROL_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)
### PXD041324 7 氧化 LCR134 #######
# INFO: New ruthenium-cyclopentadienyl complexes affect colorectal cancer hallmarks showing high therapeutic potential
# INFO: PMC79、PMC78、LCR134和LCR220	RW480	label-free	Colorectal cancer

info<-list(file="Completed/PXD041324/Oxidation (M)Sites.txt",
           out.file="PXD041324.O.LCR134.xlsx",
           celline="RW480",
           disease="Colorectal Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="LCR134",
           exp.col=c("Intensity LCR134_1" ,"Intensity LCR134_2",  "Intensity LCR134_3"),
           ctl.col=c("Intensity CONTROL_1", "Intensity CONTROL_2", "Intensity CONTROL_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)
### PXD041686 1 HEPG2 #######
# INFO: New ruthenium-cyclopentadienyl complexes affect colorectal cancer hallmarks showing high therapeutic potential
# INFO: PMC79、PMC78、LCR134和LCR220	RW480	label-free	Colorectal cancer
# 15261	HepG2 liver cancer cells (controls, without treatment) named 1
# 15262	HepG2 liver cancer cells (controls, without treatment) named 2
# 15263	HepG2 liver cancer cells (controls, without treatment) named 3
# 15265	HepG2 liver cancer cells (cells treated with algae extract) named 5
# 15266	HepG2 liver cancer cells (cells treated with algae extract) named 6
info<-list(file="Completed/PXD041686/sub_HEPG2/Oxidation (M)Sites.txt",
           out.file="PXD041686.O.HEPG2.xlsx",
           celline="HepG2",
           disease="Liver Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="Algae extract",
           exp.col=c("Intensity 1_1", "Intensity 1_2", "Intensity 1_3",
                     "Intensity 2_1", "Intensity 2_2", "Intensity 2_3",        
                     "Intensity 3_1", "Intensity 3_2", "Intensity 3_3"),
           ctl.col=c("Intensity 5_1", "Intensity 5_2", "Intensity 5_3",
                     "Intensity 5_4", "Intensity 6_1", "Intensity 6_2", 
                     "Intensity 6_3", "Intensity 6_4", "Intensity 6_5")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)

### PXD041686 2 LS174 #######
# INFO: New ruthenium-cyclopentadienyl complexes affect colorectal cancer hallmarks showing high therapeutic potential
# INFO: PMC79、PMC78、LCR134和LCR220	RW480	label-free	Colorectal cancer
# 15255	LS174 colon cancer cell line (controls, without treatment) named 55
# 15256	LS174 colon cancer cell line (controls, without treatment) named 56
# 15257	LS174 colon cancer cell line (controls, without treatment) named 57
# 15258	LS174 colon cancer cell line (cells treated with algae extract) named 58
# 15259	LS174 colon cancer cell line (cells treated with algae extract) named 59
# 15260	LS174 colon cancer cell line (cells treated with algae extract) named 60

info<-list(file="Completed/PXD041686/sub_LS174/Oxidation (M)Sites.txt",
           out.file="PXD041686.O.LS174.xlsx",
           celline="LS174",
           disease="Colon Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="Algae extract",
           exp.col=c("Intensity 58_1", "Intensity 58_2", "Intensity 58_3",
                     "Intensity 59_1", "Intensity 59_2", "Intensity 59_3",
                     "Intensity 60_1", "Intensity 60_2", "Intensity 60_3"),
           ctl.col=c("Intensity 55_1", "Intensity 55_2", "Intensity 55_3",
                     "Intensity 56_1", "Intensity 56_2", "Intensity 56_3",  
                     "Intensity 57_1", "Intensity 57_2", "Intensity 57_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "")
res.f<-filter_table(res)



### PXD043359 1  #######
# INFO: Bergenin inhibits growth of human cervical cancer cells by decreasing Galectin-3 and MMP-9 expression	
# INFO: Bergenin	宫颈癌细胞		Cervical cancer

info<-list(file="Completed/PXD043359/Phospho (STY)Sites.txt",
           out.file="PXD043359.P.xlsx",
           celline="",
           disease="Cervical Cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="Bergenin",
           exp.col=c("Intensity C1", "Intensity C2", "Intensity C3"),
           ctl.col=c("Intensity T1", "Intensity T2", "Intensity T3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info)
res.f<-filter_table(res)
### PXD043359 2 氧化  #######
# INFO: Bergenin inhibits growth of human cervical cancer cells by decreasing Galectin-3 and MMP-9 expression	
# INFO: Bergenin	宫颈癌细胞		Cervical cancer

info<-list(file="Completed/PXD043359/Oxidation (M)Sites.txt",
           out.file="PXD043359.O.xlsx",
           celline="",
           disease="Cervical Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="Bergenin",
           exp.col=c("Intensity C1", "Intensity C2", "Intensity C3"),
           ctl.col=c("Intensity T1", "Intensity T2", "Intensity T3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info)
res.f<-filter_table(res)


### PXD043585 1  #######
# INFO: MIB/MS determines SCH772984 is a selective ERK1/2 inhibitor in pancreatic cancer cells	
# SCH772984	SW 1990,MIA PaCa-2,PANC-1,HPAC,AsPC-1,Panc 10.05	label-free	Pancreatic cancer

info<-list(file="Completed/PXD043585/sub_MIAPACA_Panc1/Oxidation (M)Sites.txt",
           out.file="PXD043585.O.MiaPaca.xlsx",
           celline="MiaPaca",
           disease="Pancreatic Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SCH772984",
           exp.col=c("Intensity PC181-Der_MiaPaca-ERKi_1",
                     "Intensity PC181-Der_MiaPaca-ERKi_2",
                     "Intensity PC181-Der_MiaPaca-ERKi_3"),
           ctl.col=c("Intensity PC181-Der_MiaPaca-DMSO_1", 
                     "Intensity PC181-Der_MiaPaca-DMSO_2",                              
                     "Intensity PC181-Der_MiaPaca-DMSO_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "ERKi")
res.f<-filter_table(res)

### PXD043585 2 Panc1 #######
# INFO: MIB/MS determines SCH772984 is a selective ERK1/2 inhibitor in pancreatic cancer cells	
# SCH772984	SW 1990,MIA PaCa-2,PANC-1,HPAC,AsPC-1,Panc 10.05	label-free	Pancreatic cancer

info<-list(file="Completed/PXD043585/sub_MIAPACA_Panc1/Oxidation (M)Sites.txt",
           out.file="PXD043585.O.Panc1.xlsx",
           celline="Panc1",
           disease="Pancreatic Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SCH772984",
           exp.col=c("Intensity PC200-Der_Panc1-ERKi_1",
                     "Intensity PC200-Der_Panc1-ERKi_2",
                     "Intensity PC200-Der_Panc1-ERKi_3" ),
           ctl.col=c("Intensity PC200-Der_Panc1-DMSO_1",
                     "Intensity PC200-Der_Panc1-DMSO_2",  
                     "Intensity PC200-Der_Panc1-DMSO_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "SCH772984 is a selective ERK1/2 inhibitor ")
res.f<-filter_table(res)

### PXD043585 3 Panc1005 #######
# INFO: MIB/MS determines SCH772984 is a selective ERK1/2 inhibitor in pancreatic cancer cells	
# SCH772984	SW 1990,MIA PaCa-2,PANC-1,HPAC,AsPC-1,Panc 10.05	label-free	Pancreatic cancer

info<-list(file="Completed/PXD043585/sub_Panc1005_Aspc1/Oxidation (M)Sites.txt",
           out.file="PXD043585.O.Panc1005.xlsx",
           celline="Panc1005",
           disease="Pancreatic Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SCH772984",
           exp.col=c("Intensity PC298-Der_Panc1005-ERKi_1",
                     "Intensity PC298-Der_Panc1005-ERKi_2",
                     "Intensity PC298-Der_Panc1005-ERKi_3" ),
           ctl.col=c("Intensity PC298-Der_Panc1005-DMSO_1",
                     "Intensity PC298-Der_Panc1005-DMSO_2",                       
                     "Intensity PC298-Der_Panc1005-DMSO_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "SCH772984 is a selective ERK1/2 inhibitor ")
res.f<-filter_table(res)

### PXD043585 4 AsPC-1 #######
# INFO: MIB/MS determines SCH772984 is a selective ERK1/2 inhibitor in pancreatic cancer cells	
# SCH772984	SW 1990,MIA PaCa-2,PANC-1,HPAC,AsPC-1,Panc 10.05	label-free	Pancreatic cancer

info<-list(file="Completed/PXD043585/sub_Panc1005_Aspc1/Oxidation (M)Sites.txt",
           out.file="PXD043585.O.AsPC1.xlsx",
           celline="AsPC-1",
           disease="Pancreatic Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SCH772984",
           exp.col=c("Intensity PC312-Der_Aspc1-ERKi_1",
                     "Intensity PC312-Der_Aspc1-ERKi_2",    
                     "Intensity PC312-Der_Aspc1-ERKi_3"  ),
           ctl.col=c("Intensity PC312-Der_Aspc1-DMSO_1",
                     "Intensity PC312-Der_Aspc1-DMSO_2",
                     "Intensity PC312-Der_Aspc1-DMSO_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "SCH772984 is a selective ERK1/2 inhibitor ")
res.f<-filter_table(res)

### PXD043585 5 SW1990 #######
# INFO: MIB/MS determines SCH772984 is a selective ERK1/2 inhibitor in pancreatic cancer cells	
# SCH772984	SW 1990,MIA PaCa-2,PANC-1,HPAC,AsPC-1,Panc 10.05	label-free	Pancreatic cancer

info<-list(file="Completed/PXD043585/sub_SW1990_HPAC/Oxidation (M)Sites.txt",
           out.file="PXD043585.O.SW1990.xlsx",
           celline="SW1990",
           disease="Pancreatic Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SCH772984",
           exp.col=c("Intensity PC304-Der_SW1990-ERKi_1",
                     "Intensity PC304-Der_SW1990-ERKi_2",
                     "Intensity PC304-Der_SW1990-ERKi_3" ),
           ctl.col=c("Intensity PC304-Der_SW1990-DMSO_1",
                     "Intensity PC304-Der_SW1990-DMSO_2",
                     "Intensity PC304-Der_SW1990-DMSO_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "SCH772984 is a selective ERK1/2 inhibitor ")
res.f<-filter_table(res)

### PXD043585 6 HPAC #######
# INFO: MIB/MS determines SCH772984 is a selective ERK1/2 inhibitor in pancreatic cancer cells	
# SCH772984	SW 1990,MIA PaCa-2,PANC-1,HPAC,AsPC-1,Panc 10.05	label-free	Pancreatic cancer

info<-list(file="Completed/PXD043585/sub_SW1990_HPAC/Oxidation (M)Sites.txt",
           out.file="PXD043585.O.HPAC.xlsx",
           celline="HPAC",
           disease="Pancreatic Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="SCH772984",
           exp.col=c( "Intensity PC311-Der_HPAC-ERKi_1",  
                      "Intensity PC311-Der_HPAC-ERKi_2",
                      "Intensity PC311-Der_HPAC-ERKi_3" ),
           ctl.col=c("Intensity PC311-Der_HPAC-DMSO_1",
                     "Intensity PC311-Der_HPAC-DMSO_2",  
                     "Intensity PC311-Der_HPAC-DMSO_3")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "SCH772984 is a selective ERK1/2 inhibitor ")
res.f<-filter_table(res)


### PXD044042 1  #######
# INFO: Phosphoproteomic analysis of Aurora Kinase B inhibition in WT and Cdh1 mutant RPE1 cells
# Barasertib	RPE1	TMT	视网膜色素上皮
# TMT16 每4个为一个重复，两个样本为重复
# 1-4 control
# 5-8 Cdh1 mut
# 9-12 control
# APC7 mutant
info<-list(file="Completed/PXD044042/Deamidation (NQ)Sites.txt",
           out.file="PXD044042.Deami.Cdh1_Mut.xlsx",
           celline="RPE1",
           disease="Neurodevelopmental Disorders", 
           disease.sub="Cdh1 mutant", 
           ptm="deamidation",
           drug="Barasertib",
           exp.col=c("Reporter intensity corrected 5 10",
                     "Reporter intensity corrected 6 10",
                     "Reporter intensity corrected 7 10",
                     "Reporter intensity corrected 8 10"),
           
           ctl.col=c("Reporter intensity corrected 1 10", 
                     "Reporter intensity corrected 2 10", 
                     "Reporter intensity corrected 3 10", 
                     "Reporter intensity corrected 4 10"
                     # ,
                    #  "Reporter intensity corrected 9 10",  "Reporter intensity corrected 10 10",
                    #  "Reporter intensity corrected 11 10", "Reporter intensity corrected 12 10",
                    #  "Reporter intensity corrected 13 10", "Reporter intensity corrected 14 10",
                    # "Reporter intensity corrected 15 10", "Reporter intensity corrected 16 10"
                     )
)
processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)
check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Cdh1 Mutant - Ctl")
res.f<-filter_table(res)

### PXD044042 2 APC7 mutant #######
# INFO: Phosphoproteomic analysis of Aurora Kinase B inhibition in WT and Cdh1 mutant RPE1 cells
# Barasertib	RPE1	TMT	视网膜色素上皮
# TMT16 每4个为一个重复，两个样本为重复
# 1-4 control
# 5-8 Cdh1 mut
# 9-12 control
# APC7 mutant
info<-list(file="Completed/PXD044042/Deamidation (NQ)Sites.txt",
           out.file="PXD044042.Deami.APC7_Mut.xlsx",
           celline="RPE1",
           disease="Neurodevelopmental Disorders", 
           disease.sub="APC7 mutant", 
           ptm="deamidation",
           drug="Barasertib",
           exp.col=c("Reporter intensity corrected 13 10",
                     "Reporter intensity corrected 14 10",
                     "Reporter intensity corrected 15 10",
                     "Reporter intensity corrected 16 10"),
           
           ctl.col=c("Reporter intensity corrected 9 10", 
                     "Reporter intensity corrected 10 10", 
                     "Reporter intensity corrected 11 10", 
                     "Reporter intensity corrected 12 10"
                     # ,
                     #  "Reporter intensity corrected 9 10",  "Reporter intensity corrected 10 10",
                     #  "Reporter intensity corrected 11 10", "Reporter intensity corrected 12 10",
                     #  "Reporter intensity corrected 13 10", "Reporter intensity corrected 14 10",
                     # "Reporter intensity corrected 15 10", "Reporter intensity corrected 16 10"
           )
)
# processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)
check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Cdh1 Mutant - Ctl")
res.f<-filter_table(res) 



### PXD044042 3 磷酸化  #######
# INFO: Phosphoproteomic analysis of Aurora Kinase B inhibition in WT and Cdh1 mutant RPE1 cells
# Barasertib	RPE1	TMT	视网膜色素上皮
# TMT16 每4个为一个重复，两个样本为重复
# 1-4 control
# 5-8 Cdh1 mut
# 9-12 control
# APC7 mutant
info<-list(file="Completed/PXD044042/Phospho (STY)Sites.txt",
           out.file="PXD044042.P.Cdh1_Mut.xlsx",
           celline="RPE1",
           disease="Neurodevelopmental Disorders", 
           disease.sub="Cdh1 mutant", 
           ptm="phosphorylation",
           drug="Barasertib",
           exp.col=c("Reporter intensity corrected 5 10",
                     "Reporter intensity corrected 6 10",
                     "Reporter intensity corrected 7 10",
                     "Reporter intensity corrected 8 10"),
           
           ctl.col=c("Reporter intensity corrected 1 10", 
                     "Reporter intensity corrected 2 10", 
                     "Reporter intensity corrected 3 10", 
                     "Reporter intensity corrected 4 10"
                     # ,
                     #  "Reporter intensity corrected 9 10",  "Reporter intensity corrected 10 10",
                     #  "Reporter intensity corrected 11 10", "Reporter intensity corrected 12 10",
                     #  "Reporter intensity corrected 13 10", "Reporter intensity corrected 14 10",
                     # "Reporter intensity corrected 15 10", "Reporter intensity corrected 16 10"
           )
)
# processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)
check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Cdh1 Mutant - Ctl")
res.f<-filter_table(res)

### PXD044042 4 磷酸化 APC7 mutant #######
# INFO: Phosphoproteomic analysis of Aurora Kinase B inhibition in WT and Cdh1 mutant RPE1 cells
# Barasertib	RPE1	TMT	视网膜色素上皮
# TMT16 每4个为一个重复，两个样本为重复
# 1-4 control
# 5-8 Cdh1 mut
# 9-12 control
# APC7 mutant
info<-list(file="Completed/PXD044042/Phospho (STY)Sites.txt",
           out.file="PXD044042.P.APC7_Mut.xlsx",
           celline="RPE1",
           disease="Neurodevelopmental Disorders", 
           disease.sub="APC7 mutant", 
           ptm="phosphorylation",
           drug="Barasertib",
           exp.col=c("Reporter intensity corrected 13 10",
                     "Reporter intensity corrected 14 10",
                     "Reporter intensity corrected 15 10",
                     "Reporter intensity corrected 16 10"),
           
           ctl.col=c("Reporter intensity corrected 9 10", 
                     "Reporter intensity corrected 10 10", 
                     "Reporter intensity corrected 11 10", 
                     "Reporter intensity corrected 12 10"
                     # ,
                     #  "Reporter intensity corrected 9 10",  "Reporter intensity corrected 10 10",
                     #  "Reporter intensity corrected 11 10", "Reporter intensity corrected 12 10",
                     #  "Reporter intensity corrected 13 10", "Reporter intensity corrected 14 10",
                     # "Reporter intensity corrected 15 10", "Reporter intensity corrected 16 10"
           )
)
# processed<-merge_TechRep(info =info)
# col<-get_col(info,correct = TRUE,data = processed)
check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "Cdh1 Mutant - Ctl")
res.f<-filter_table(res) 






### PXD006459 1  #######
# INFO :Human lamin B1: stress-induced phosphorylation	MMS	HCC1937		Cervix carcinoma

info<-list(file="Completed/PXD006459/Phospho (STY)Sites.txt",
           out.file="PXD006459.P.xlsx",
           celline="HCC1937",
           disease="Cervix carcinoma", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="MMS",
           exp.col=c("Intensity MMS1", "Intensity MMS2"),
           ctl.col=c("Intensity CTL1", "Intensity CTL2")
)
col<-get_col(info)
# check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info)
res.f<-filter_table(res)
### PXD006459 2  氧化 #######
# INFO :Human lamin B1: stress-induced phosphorylation	MMS	HCC1937		Cervix carcinoma

info<-list(file="Completed/PXD006459/Oxidation (M)Sites.txt",
           out.file="PXD006459.O.xlsx",
           celline="HCC1937",
           disease="Cervix carcinoma", 
           disease.sub="", 
           ptm="oxidation",
           drug="MMS",
           exp.col=c("Intensity MMS1", "Intensity MMS2"),
           ctl.col=c("Intensity CTL1", "Intensity CTL2")
)
col<-get_col(info)
# check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info)
res.f<-filter_table(res)



### PXD006561 1 pST #######
# INFO : CDK4/6 inhibitor resistance in prostate cancer	
# palbociclib	LNCaP,LAPC4	Unknown	Prostate cancer


info<-list(file="Completed/PXD006561/Phospho (STY)Sites.txt",
           out.file="PXD006561.P.pST.LAPC4.xlsx",
           celline="LAPC4",
           disease="Prostate Cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="Palbociclib",
           exp.col=c("Intensity LA-W-P-pST.1A" ,  "Intensity LA-W-P-pST.1B"),
           
           ctl.col=c("Intensity LA-W-C-pST.1A" ,"Intensity LA-W-C-pST.1B")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "药物治疗敏感")
res.f<-filter_table(res)
### PXD006561 2 pY  #######
# INFO : CDK4/6 inhibitor resistance in prostate cancer	
# palbociclib	LNCaP,LAPC4	Unknown	Prostate cancer

info<-list(file="Completed/PXD006561/Phospho (STY)Sites.txt",
           out.file="PXD006561.P.pY.LAPC4.xlsx",
           celline="LAPC4",
           disease="Prostate Cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="Palbociclib",
           exp.col=c("Intensity LA-W-P-pY.8A" ,  "Intensity LA-W-P-pY.8B"),
           
           ctl.col=c("Intensity LA-W-C-pY.7A"  ,"Intensity LA-W-C-pY.7B" )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "药物治疗敏感")
res.f<-filter_table(res)


### PXD006561 3 pST  耐药 #######
# INFO : CDK4/6 inhibitor resistance in prostate cancer	
# palbociclib	LNCaP,LAPC4	Unknown	Prostate cancer


info<-list(file="Completed/PXD006561/Phospho (STY)Sites.txt",
           out.file="PXD006561.P.pST.LAPC4-resistant.xlsx",
           celline="LAPC4",
           disease="Prostate Cancer", 
           disease.sub="palbociclib-resistant", 
           ptm="phosphorylation",
           drug="Palbociclib",
           exp.col=c("Intensity LA-PR2-P-pST.1A", "Intensity LA-PR2-P-pST.1B"),
           
           ctl.col=c("Intensity LA-W-C-pST.1A" ,"Intensity LA-W-C-pST.1B" )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "药物治疗耐药")
res.f<-filter_table(res)
### PXD006561 4 pY  耐药 #######
# INFO : CDK4/6 inhibitor resistance in prostate cancer	
# palbociclib	LNCaP,LAPC4	Unknown	Prostate cancer

info<-list(file="Completed/PXD006561/Phospho (STY)Sites.txt",
           out.file="PXD006561.P.pY.LAPC4-resistant.xlsx",
           celline="LAPC4",
           disease="Prostate Cancer", 
           disease.sub="palbociclib-resistant", 
           ptm="phosphorylation",
           drug="Palbociclib",
           exp.col=c("Intensity LA-W-P-pY.8A" ,  "Intensity LA-W-P-pY.8B"),
           
           ctl.col=c("Intensity LA-W-C-pY.7A"  ,"Intensity LA-W-C-pY.7B" )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "药物治疗耐药")
res.f<-filter_table(res)


### PXD006561 5 pST LNCaP #######
# INFO : CDK4/6 inhibitor resistance in prostate cancer	
# palbociclib	LNCaP,LNCaP	Unknown	Prostate cancer


info<-list(file="Completed/PXD006561/Phospho (STY)Sites.txt",
           out.file="PXD006561.P.pST.LNCaP.xlsx",
           celline="LNCaP",
           disease="Prostate Cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="Palbociclib",
           exp.col=c("Intensity LN-W-P-pST.1A" ,  "Intensity LN-W-P-pST.1B"),
           
           ctl.col=c("Intensity LN-W-C-pST.1A" ,"Intensity LN-W-C-pST.1B")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "药物治疗敏感")
res.f<-filter_table(res)
### PXD006561 6 pY LNCaP  #######
# INFO : CDK4/6 inhibitor resistance in prostate cancer	
# palbociclib	LNCaP,LNCaP	Unknown	Prostate cancer

info<-list(file="Completed/PXD006561/Phospho (STY)Sites.txt",
           out.file="PXD006561.P.pY.LNCaP.xlsx",
           celline="LNCaP",
           disease="Prostate Cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="Palbociclib",
           exp.col=c("Intensity LN-W-P-pY.2A","Intensity LN-W-P-pY.2B"),
           
           ctl.col=c("Intensity LN-W-C-pY.1A","Intensity LN-W-C-pY.1B" )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "药物治疗敏感")
res.f<-filter_table(res)


### PXD006561 7 pST LNCaP  耐药 #######
# INFO : CDK4/6 inhibitor resistance in prostate cancer	
# palbociclib	LNCaP,LNCaP	Unknown	Prostate cancer


info<-list(file="Completed/PXD006561/Phospho (STY)Sites.txt",
           out.file="PXD006561.P.pST.LNCaP-resistant.xlsx",
           celline="LNCaP",
           disease="Prostate Cancer", 
           disease.sub="palbociclib-resistant", 
           ptm="phosphorylation",
           drug="Palbociclib",
           exp.col=c("Intensity LN-PR2-P-pST.1A","Intensity LN-PR2-P-pST.1B",
                     "Intensity LN-PR1-P-pST.1A", "Intensity LN-PR1-P-pST.1B"),
           
           ctl.col=c("Intensity LN-W-C-pST.1A" ,"Intensity LN-W-C-pST.1B")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "药物治疗耐药")
res.f<-filter_table(res)
### PXD006561 8 pY LNCaP  耐药 #######
# INFO : CDK4/6 inhibitor resistance in prostate cancer	
# palbociclib	LNCaP,LNCaP	Unknown	Prostate cancer

info<-list(file="Completed/PXD006561/Phospho (STY)Sites.txt",
           out.file="PXD006561.P.pY.LNCaP-resistant.xlsx",
           celline="LNCaP",
           disease="Prostate Cancer", 
           disease.sub="palbociclib-resistant", 
           ptm="phosphorylation",
           drug="Palbociclib",
           exp.col=c("Intensity LN-PR2-P-pY.6A","Intensity LN-PR2-P-pY.6B",
                     "Intensity LN-PR1-P-pY.4A", "Intensity LN-PR1-P-pY.4B"),
           
           ctl.col=c("Intensity LN-W-C-pY.1A","Intensity LN-W-C-pY.1B" )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "药物治疗耐药")
res.f<-filter_table(res)


### PXD045777 1  #######
# INFO: Multilevel Plasticity and Altered Glycosylation Drive Aggressiveness in Hypoxic and Glucose-Deprived Bladder Cancer Cells	
# 葡萄糖剥夺（Cisplatin）	RT4,5637,T24 和 HT1197（选T24,5637）	Label free	膀胱癌

info<-list(file="Completed/PXD045777/Oxidation (M)Sites.txt",
           out.file="PXD045777.O.xlsx",
           celline="5637,T24",
           disease="Bladder Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="Cisplatin + Hypoxic",
           exp.col=c("Intensity 5637HG",  "Intensity T24HG" ),
           ctl.col=c("Intensity 5637NG",  "Intensity T24NG")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "缺氧和葡萄糖剥夺 - ctl")
res.f<-filter_table(res)


### PXD047335 1 COMBO  #######
# INFO: 	ANDROGEN DRIVES MELANOMA INVASIVENESS AND METASTATIC SPREAD BY INDUCING TUMORIGENIC FUCOSYLATION: 
# Phosphoproteomics	ARi	黑色素瘤细胞WM1366,WM793	TIC	Melanocyte


info<-list(file="Completed/PXD047335/Phospho (STY)Sites.txt",
           out.file="PXD047335.P.WM1366.combo.xlsx",
           celline="WM1366",
           disease="Melanoma", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="ARi + FUT4 OE",
           exp.col=c("Intensity 1366_OE_ARi_IMAC_run1", "Intensity 1366_OE_ARi_IMAC_run2"), #"Intensity 1366_OE_CTL_IMAC_run1", "Intensity 1366_OE_CTL_IMAC_run2"
           ctl.col=c(
                     "Intensity 1366_EV_CTL_IMAC_run1", "Intensity 1366_EV_CTL_IMAC_run2" #"Intensity 1366_EV_ARi_IMAC_run1", "Intensity 1366_EV_ARi_IMAC_run2", 
                     )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "1366_OE_ARi - ctl")
res.f<-filter_table(res)

### PXD047335 2  #######
# INFO: 	ANDROGEN DRIVES MELANOMA INVASIVENESS AND METASTATIC SPREAD BY INDUCING TUMORIGENIC FUCOSYLATION: 
# Phosphoproteomics	ARi	黑色素瘤细胞WM1366,WM793	TIC	Melanocyte


info<-list(file="Completed/PXD047335/Phospho (STY)Sites.txt",
           out.file="PXD047335.P.WM1366.xlsx",
           celline="WM1366",
           disease="Melanoma", 
           disease.sub="FUT4 OE", 
           ptm="phosphorylation",
           drug="ARi",
           exp.col=c("Intensity 1366_OE_ARi_IMAC_run1", "Intensity 1366_OE_ARi_IMAC_run2"), #
           ctl.col=c(
             "Intensity 1366_OE_CTL_IMAC_run1", "Intensity 1366_OE_CTL_IMAC_run2" 
           )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "ARi - ctl")
res.f<-filter_table(res)

### PXD047335 3  WM793 COMBO  #######
# INFO: 	ANDROGEN DRIVES MELANOMA INVASIVENESS AND METASTATIC SPREAD BY INDUCING TUMORIGENIC FUCOSYLATION: 
# Phosphoproteomics	ARi	黑色素瘤细胞WM1366,WM793	TIC	Melanocyte


info<-list(file="Completed/PXD047335/Phospho (STY)Sites.txt",
           out.file="PXD047335.P.WM793.combo.xlsx",
           celline="WM793",
           disease="Melanoma", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="ARi + FUT4 OE",
           exp.col=c("Intensity 793_OE_ARi_IMAC_run1", "Intensity 793_OE_ARi_IMAC_run2"), #"Intensity 1366_OE_CTL_IMAC_run1", "Intensity 1366_OE_CTL_IMAC_run2"
           ctl.col=c(
             "Intensity 793_EV_CTL_IMAC_run1", "Intensity 793_EV_CTL_IMAC_run2" #"Intensity 1366_EV_ARi_IMAC_run1", "Intensity 1366_EV_ARi_IMAC_run2", 
           )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "1366_OE_ARi - ctl")
res.f<-filter_table(res)

### PXD047335 4 WM793 #######
# INFO: 	ANDROGEN DRIVES MELANOMA INVASIVENESS AND METASTATIC SPREAD BY INDUCING TUMORIGENIC FUCOSYLATION: 
# Phosphoproteomics	ARi	黑色素瘤细胞WM1366,WM793	TIC	Melanocyte


info<-list(file="Completed/PXD047335/Phospho (STY)Sites.txt",
           out.file="PXD047335.P.WM793.xlsx",
           celline="WM793",
           disease="Melanoma", 
           disease.sub="FUT4 OE", 
           ptm="phosphorylation",
           drug="ARi",
           exp.col=c("Intensity 793_OE_ARi_IMAC_run1", "Intensity 793_OE_ARi_IMAC_run2"), #
           ctl.col=c(
             "Intensity 793_OE_CTL_IMAC_run1", "Intensity 793_OE_CTL_IMAC_run2" 
           )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "ARi - ctl")
res.f<-filter_table(res)

### PXD047335 5 COMBO 氧化 #######
# INFO: 	ANDROGEN DRIVES MELANOMA INVASIVENESS AND METASTATIC SPREAD BY INDUCING TUMORIGENIC FUCOSYLATION: 
# Phosphoproteomics	ARi	黑色素瘤细胞WM1366,WM793	TIC	Melanocyte


info<-list(file="Completed/PXD047335/Oxidation (M)Sites.txt",
           out.file="PXD047335.O.WM1366.combo.xlsx",
           celline="WM1366",
           disease="Melanoma", 
           disease.sub="", 
           ptm="oxidation",
           drug="ARi + FUT4 OE",
           exp.col=c("Intensity 1366_OE_ARi_IMAC_run1", "Intensity 1366_OE_ARi_IMAC_run2"), #"Intensity 1366_OE_CTL_IMAC_run1", "Intensity 1366_OE_CTL_IMAC_run2"
           ctl.col=c(
             "Intensity 1366_EV_CTL_IMAC_run1", "Intensity 1366_EV_CTL_IMAC_run2" #"Intensity 1366_EV_ARi_IMAC_run1", "Intensity 1366_EV_ARi_IMAC_run2", 
           )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "1366_OE_ARi - ctl")
res.f<-filter_table(res)

### PXD047335 6 氧化  #######
# INFO: 	ANDROGEN DRIVES MELANOMA INVASIVENESS AND METASTATIC SPREAD BY INDUCING TUMORIGENIC FUCOSYLATION: 
# Phosphoproteomics	ARi	黑色素瘤细胞WM1366,WM793	TIC	Melanocyte


info<-list(file="Completed/PXD047335/Oxidation (M)Sites.txt",
           out.file="PXD047335.O.WM1366.xlsx",
           celline="WM1366",
           disease="Melanoma", 
           disease.sub="FUT4 OE", 
           ptm="oxidation",
           drug="ARi",
           exp.col=c("Intensity 1366_OE_ARi_IMAC_run1", "Intensity 1366_OE_ARi_IMAC_run2"), #
           ctl.col=c(
             "Intensity 1366_OE_CTL_IMAC_run1", "Intensity 1366_OE_CTL_IMAC_run2" 
           )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "ARi - ctl")
res.f<-filter_table(res)

### PXD047335 7  WM793 COMBO 氧化 #######
# INFO: 	ANDROGEN DRIVES MELANOMA INVASIVENESS AND METASTATIC SPREAD BY INDUCING TUMORIGENIC FUCOSYLATION: 
# Phosphoproteomics	ARi	黑色素瘤细胞WM1366,WM793	TIC	Melanocyte


info<-list(file="Completed/PXD047335/Oxidation (M)Sites.txt",
           out.file="PXD047335.O.WM793.combo.xlsx",
           celline="WM793",
           disease="Melanoma", 
           disease.sub="", 
           ptm="oxidation",
           drug="ARi + FUT4 OE",
           exp.col=c("Intensity 793_OE_ARi_IMAC_run1", "Intensity 793_OE_ARi_IMAC_run2"), #"Intensity 1366_OE_CTL_IMAC_run1", "Intensity 1366_OE_CTL_IMAC_run2"
           ctl.col=c(
             "Intensity 793_EV_CTL_IMAC_run1", "Intensity 793_EV_CTL_IMAC_run2" #"Intensity 1366_EV_ARi_IMAC_run1", "Intensity 1366_EV_ARi_IMAC_run2", 
           )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "1366_OE_ARi - ctl")
res.f<-filter_table(res)

### PXD047335 8 WM793 氧化 #######
# INFO: 	ANDROGEN DRIVES MELANOMA INVASIVENESS AND METASTATIC SPREAD BY INDUCING TUMORIGENIC FUCOSYLATION: 
# Phosphoproteomics	ARi	黑色素瘤细胞WM1366,WM793	TIC	Melanocyte


info<-list(file="Completed/PXD047335/Oxidation (M)Sites.txt",
           out.file="PXD047335.O.WM793.xlsx",
           celline="WM793",
           disease="Melanoma", 
           disease.sub="FUT4 OE", 
           ptm="oxidation",
           drug="ARi",
           exp.col=c("Intensity 793_OE_ARi_IMAC_run1", "Intensity 793_OE_ARi_IMAC_run2"), #
           ctl.col=c(
             "Intensity 793_OE_CTL_IMAC_run1", "Intensity 793_OE_CTL_IMAC_run2" 
           )
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,note = "ARi - ctl")
res.f<-filter_table(res)


### PXD048534 1  #######
# INFO: The ERK-dependent proteome is enriched in the mouse PDAC KPC RAS-dependent phosphoproteome	
# RMC7977	K8484,K18905	TMT	Pancreatic ductal adenocarcinoma

info<-list(file="Completed/PXD048534/Phospho (STY)Sites.txt",
           out.file="PXD048534.P.K8484.xlsx",
           celline="K8484",
           disease="Pancreatic Cancer", 
           disease.sub="PDAC", 
           ptm="phosphorylation",
           drug="RMC7977",
           exp.col=c("Reporter intensity corrected 3 1",
                     "Reporter intensity corrected 5 1",
                     "Reporter intensity corrected 7 1"),
           ctl.col=c("Reporter intensity corrected 2 1",
                     "Reporter intensity corrected 4 1",
                     "Reporter intensity corrected 6 1")
)
processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)
check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)

### PXD048534 2 K18905 #######
# INFO: The ERK-dependent proteome is enriched in the mouse PDAC KPC RAS-dependent phosphoproteome	
# RMC7977	K8484,K18905	TMT	Pancreatic ductal adenocarcinoma

info<-list(file="Completed/PXD048534/Phospho (STY)Sites.txt",
           out.file="PXD048534.P.K18905.xlsx",
           celline="K18905",
           disease="Pancreatic Cancer", 
           disease.sub="PDAC", 
           ptm="phosphorylation",
           drug="RMC7977",
           exp.col=c("Reporter intensity corrected 8 1",
                     "Reporter intensity corrected 12 1",
                     "Reporter intensity corrected 14 1"),
           ctl.col=c("Reporter intensity corrected 9 1",
                     "Reporter intensity corrected 11 1",
                     "Reporter intensity corrected 15 1")
)
processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)
check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)

### PXD048534 3 氧化  #######
# INFO: The ERK-dependent proteome is enriched in the mouse PDAC KPC RAS-dependent phosphoproteome	
# RMC7977	K8484,K18905	TMT	Pancreatic ductal adenocarcinoma

info<-list(file="Completed/PXD048534/Oxidation (M)Sites.txt",
           out.file="PXD048534.O.K8484.xlsx",
           celline="K8484",
           disease="Pancreatic Cancer", 
           disease.sub="PDAC", 
           ptm="phosphorylation",
           drug="RMC7977",
           exp.col=c("Reporter intensity corrected 3 1",
                     "Reporter intensity corrected 5 1",
                     "Reporter intensity corrected 7 1"),
           ctl.col=c("Reporter intensity corrected 2 1",
                     "Reporter intensity corrected 4 1",
                     "Reporter intensity corrected 6 1")
)
processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)
check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)

### PXD048534 4 K18905 氧化 #######
# INFO: The ERK-dependent proteome is enriched in the mouse PDAC KPC RAS-dependent phosphoproteome	
# RMC7977	K8484,K18905	TMT	Pancreatic ductal adenocarcinoma

info<-list(file="Completed/PXD048534/Oxidation (M)Sites.txt",
           out.file="PXD048534.O.K18905.xlsx",
           celline="K18905",
           disease="Pancreatic Cancer", 
           disease.sub="PDAC", 
           ptm="phosphorylation",
           drug="RMC7977",
           exp.col=c("Reporter intensity corrected 8 1",
                     "Reporter intensity corrected 12 1",
                     "Reporter intensity corrected 14 1"),
           ctl.col=c("Reporter intensity corrected 9 1",
                     "Reporter intensity corrected 11 1",
                     "Reporter intensity corrected 15 1")
)
processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)
check_indensity(info,data = processed,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info,data = processed,note = "")
res.f<-filter_table(res)


### PXD049299 1  #######
# INFO: A Proteomics Approach Identifies RREB1 as a Crucial Molecular Target of Imidazo–Pyrazole Treatment in SKMEL-28 Melanoma Cells	
# Imidazopyrazole 衍生物CB556	SKMEL-28	Label free	Skin cancer

info<-list(file="Completed/PXD049299/Phospho (STY)Sites.txt",
           out.file="PXD049299.P.xlsx",
           celline="SKMEL-28",
           disease="Skin Cancer", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="CB556",
           exp.col=c("Intensity CB24",   "Intensity CB48",   "Intensity CB72"),
           ctl.col=c("Intensity DMSO24", "Intensity DMSO48", "Intensity DMSO72")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info)
res.f<-filter_table(res)
### PXD049299 2  氧化 #######
# INFO :Human lamin B1: stress-induced phosphorylation	MMS	HCC1937		Cervix carcinoma

info<-list(file="Completed/PXD049299/Oxidation (M)Sites.txt",
           out.file="PXD049299.O.xlsx",
           celline="SKMEL-28",
           disease="Skin Cancer", 
           disease.sub="", 
           ptm="oxidation",
           drug="CB556",
           exp.col=c("Intensity CB24",   "Intensity CB48",   "Intensity CB72"),
           ctl.col=c("Intensity DMSO24", "Intensity DMSO48", "Intensity DMSO72")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info)
res.f<-filter_table(res)

### 样本不明 PXD050555 1  氧化 #######
# INFO: TMT-10plex-based phosphoproteomics of bioactive compounds in A549 cells	
# Chamuangone, Cannabigerol (CBG), Cannabidiol (CBD), NP1-cyclic peptide	A549	TMT	NSCLC

info<-list(file="Completed/PXD050555/Oxidation (M)Sites.txt",
           out.file="PXD050555.O.xlsx",
           celline="A549",
           disease="Lung Cancer", 
           disease.sub="NSCLC", 
           ptm="oxidation",
           drug="CB556",
           exp.col=c("Intensity CB24",   "Intensity CB48",   "Intensity CB72"),
           ctl.col=c("Intensity DMSO24", "Intensity DMSO48", "Intensity DMSO72")
)
processed<-merge_TechRep(info =info)
col<-get_col(info,correct = TRUE,data = processed)
check_indensity(info,data = processed,col=c(col[grep("corrected 1",col)]))
# res<-get_stat_table(info = info,data = processed,note = "")
# res.f<-filter_table(res)



### PXD019038 1  #######
# INFO: Tumor drug concentration and phosphoproteomic profiles after two weeks of treatment with sunitinib in patients with newly-diagnosed glioblastoma	
# sunitinib	U87、U251、T98G 和 U138 四种 GBM，HT29 结直肠细胞系作为阳性对照	Label free	Glioblastoma
# A	T	GBM-CON-01
# B	U	GBM-SUN-01
# C	V	GBM-CON-07
# D	W	GBM-SUN-02
# E	X	GBM-CON-04
# F	Y	GBM-CON-05
# G	Z	GBM-SUN-04A
# H	AA	GBM-CON-09
# I	AB	GBM-SUN-WK1
# J	AC	HCT-116
# K	AD	GBM-CON-06
# L	AE	GBM-SUN-04B
# M	AF	GBM-CON-08
# N	AG	GBM-SUN-05
# O	AH	GBM-CON-02
# P	AI	GBM-SUN-04C
# Q	AJ	GBM-CON-03
# R	AK	GBM-SUN-03
# S	AL	HCT-116

info<-list(file="Completed/PXD019038/sub_Phos/Phospho (STY)Sites.txt",
           out.file="PXD019038.P.phos.xlsx",
           celline="",
           disease="Glioblastoma", 
           disease.sub="", 
           ptm="phosphorylation",
           drug="Sunitinib",
           exp.col=c("Intensity B","Intensity D","Intensity G","Intensity I",
                     "Intensity L","Intensity N","Intensity P","Intensity R"),
           ctl.col=c("Intensity A","Intensity C","Intensity E","Intensity F",
                     "Intensity H","Intensity K","Intensity M","Intensity O",
                     "Intensity Q")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info)
res.f<-filter_table(res)
### PXD043359 2 氧化  #######
# INFO: Bergenin inhibits growth of human cervical cancer cells by decreasing Galectin-3 and MMP-9 expression	
# INFO: Bergenin	宫颈癌细胞		Cervical cancer

info<-list(file="Completed/PXD019038/sub_Phos/Oxidation (M)Sites.txt",
           out.file="PXD019038.O.phos.xlsx",
           celline="",
           disease="Glioblastoma", 
           disease.sub="", 
           ptm="oxidation",
           drug="Sunitinib",
           exp.col=c("Intensity B","Intensity D","Intensity G","Intensity I",
                     "Intensity L","Intensity N","Intensity P","Intensity R"),
           ctl.col=c("Intensity A","Intensity C","Intensity E","Intensity F",
                     "Intensity H","Intensity K","Intensity M","Intensity O",
                     "Intensity Q")
)
col<-get_col(info)
check_indensity(info,col=c(info$exp.col,info$ctl.col))
res<-get_stat_table(info = info)
res.f<-filter_table(res)


# PXD019038