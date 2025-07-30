import requests
import io
import json
import sys
from tqdm import tqdm
from bioc import pubtator
import pandas as pd
import pickle
import os
import re
import time
from datetime import datetime
from Bio import Entrez
from Bio import Medline
import stanza


## logging function
def logging(file="pipline.log",content="",add_time=True,log_type=""):
    
    f=open(file,"a")
    text=log_type+"\t"+content+"\n"
    if add_time:
        current_time = time.time()
        fix = datetime.fromtimestamp(current_time).strftime('%Y-%m-%d %H:%M:%S')

        text=fix+'\t'+text
    f.write(text)
    f.close()
    
## extract medline file to tab separated file
def extract_medline(medline_file,save_file,failed_file):
    f =open(medline_file,encoding="utf-8")
    if os.path.exists(save_file):
        os.remove(save_file)

    row = 0
    failed_id =[]
    fetch_records=Medline.parse(f)
    for record in fetch_records:
        PMID = record.get("PMID", "")
        PMCID = record.get("PMC", "") #PMC
        TI = record.get("TI", "")
        LR = record.get("LR", "")
        AB = record.get("AB", "")
        AU1 = record.get("AU", [""])[0]
        row = row+1
        out = [str(row), PMID, PMCID, LR, AU1, TI, AB]
        try:
            with open(save_file, 'a',encoding="utf-8") as file:
                _ = file.write("\t".join(out)+"\n")
            file.close()
        except:
            failed_id.append(PMID)

    with open(failed_file, 'a') as file:
        for item in failed_id:
            file.write(str(item) + '\n')
    return row

## get Pubtator from NCBI API
def get_Pubtator(pubmed_batch_file,
                 format="pubtator",
                 bioconcept="gene,chemical,disease,species,celline,mutation",
                 save_file="",
                 fail_file="",
                 batch_size=20):
    #清除原有文件
    if os.path.exists(save_file):
        os.remove(save_file)

    data=pd.read_table(pubmed_batch_file,sep="\t",header=None,index_col=0)
    pmid=list(data[1])

    count=len(pmid)
    print("%s entrys for Pubtator."%count)

    file = open(save_file,"ab")
    error=[]
    for start in tqdm(range(0, count, batch_size), leave=True, ncols=100):
        end = min(count, start+batch_size)
        print("Start batch: %s-%s" % (start, end))
        pmid_batch=pmid[start:end]

        json = {}
        json = {"pmids": [id for id in pmid_batch]}
        try:
            if bioconcept != "": 
                json["concepts"]=bioconcept.split(",")
            r = requests.post("https://www.ncbi.nlm.nih.gov/research/pubtator-api/publications/export/"+format , json = json)
            if r.status_code != 200 :
                print ("[Error]: HTTP code "+ str(r.status_code))
            else:
                file.write(r.text.encode("utf-8"))
                file.flush()
        except:
            error.append("%s-%s"%(start,end))
    if len(error)>0:
        f=open(fail_file,"w")
        f.write('\n'.join(error))
        f.close()
    file.close()

#%% step4 get pubtator
def check_kw(text, kw):
    if text != str and len(text) == 0:
        print("[Error] no text input")
        return (0)

    res = []

    if isinstance(kw,str) and len(kw) != 0:
        print("[Note] one keyword for check")
        # result = re.search(kw,text)
        pattern = re.compile(kw, re.IGNORECASE)
        res = re.findall(pattern , text)
    elif isinstance(kw,list)  and len(kw) != 0:
        print("[Note] multi keyword for check")
        for k in kw:
            pattern = re.compile(k, re.IGNORECASE)
            # print(k)
            res = res+re.findall(pattern, text)

    if len(res) > 0:
        return (1)
    else:
        return (0)

# check doc annotations
def check_doc(doc,anno_type): #anno_type: Gene, Chemical, Species, Disease
    # print(doc)
    anno=[]
    for _anno in doc.annotations:
        anno.append(_anno.type)

    if isinstance(anno_type,str) and len(anno_type)!=0:
        if anno_type in anno:
            return(1)
        else:
            return(0)
    elif isinstance(anno_type,list) and len(anno_type)!=0:
        res=[x in anno for x in anno_type]
        if len(res)==sum(res):
            return(1)
        else:
            return(0)
    else:
        return(0)

# get TranslationSet to dictionary
def get_kw(file): # file type .xls
    dic={}
    if file[-3:]=="xls":
        df=pd.read_table(file,sep="\t",header=None)
        for r in df.index:
            # print(r)
            row=df.loc[r]
            for i in row[2].strip().replace("\"","").replace("\\","").replace(" ","").split(","):
                dic[i]=row[0]
        return(dic)

# KW annotation
def add_anno(doc,kw,type,note="-"):
    pattern = re.compile(r"%s"%kw)
    matches = pattern.finditer(doc.text)
    for match in matches:
        # print(match)
        # print([doc.pmid, match.start(),match.end(),kw, type, note])
        ann=pubtator.PubTatorAnn(doc.pmid, match.start(),match.end(),kw, type, note)
        doc.add_annotation(ann)
    return(doc)


# filter docs by PTM, KeyWords and pubtator
def filter_doc(pubtator_file,save_file="",
               KW_file="../data/Keyword-TranslationSet.xls",
               PTM_file="../data/PTM-TranslationSet.xls"):

    with open(pubtator_file, 'r') as fp:
        docs = pubtator.load(fp)

    kw_dic=get_kw(file=KW_file)
    ptm_dic=get_kw(file=PTM_file)
    docs_filter=[]
    for doc_index in tqdm(range(len(docs))):
        doc=docs[doc_index]
        for key1 in ptm_dic.keys():
            doc=add_anno(doc,kw=key1,type="PTM",note=ptm_dic[key1])
            # print("[w] %s add PTM annotation"%doc.pmid)

        for key2 in kw_dic.keys():
            doc=add_anno(doc,kw=key2,type="KW",note=kw_dic[key2])
            # print("[w] %s add KeyWord annotation"%doc.pmid)

        if check_doc(doc,["Chemical",'Gene',"Disease","PTM","KW"]):
            # print("[w] %s is retained"%doc.pmid)
            docs_filter.append(doc)
        else:
            continue
            # print("[w] %s is filtered"%doc.pmid)
 
    with open(save_file, "wb") as f:  
        pickle.dump(docs_filter, f)  

    return(docs_filter)

#%% filter doc to stanza
def get_stanza(docs, save_file=""):
    docs_stanza = []
    nlp = stanza.Pipeline(lang='en', download_method=None, package="craft")
    for doc in tqdm(docs):
        res = nlp(doc.text)
        docs_stanza.append(res)

    with open(save_file, "wb") as f:
        pickle.dump(docs_stanza, f)
    return (docs_stanza)


def get_sentense_num_by_loc(sentence_sep, char_loc):  # -1 表示输入错误
    for i in range(len(sentence_sep)):
        if char_loc <= sentence_sep[i]:
            # print("[w] The current sentence is %s"%(i-1))
            break
    return (i-1)

# filter and packages
def get_sentense_stanza(docs, save_stanza_file="",save_sentence_file=""):
    docs_stanza=get_stanza(docs=docs, save_file=save_stanza_file)
    docs_pubtator=docs
    
    if len(docs_pubtator) != len(docs_stanza):
        print("[e] No same length of pubtator and stanza")
        return (0)

    f = open(save_sentence_file, 'w')
    sentences_stanza = []
    sentences_dict = {}
    for index in tqdm(range(len(docs_pubtator)), "sentence extact"):
        doc_pubtator = docs_pubtator[index]
        doc_stanza = docs_stanza[index]
        pmid = doc_pubtator.pmid
        sens_len = len(doc_stanza.sentences)

        # stanza . pos
        sentence_sep = []
        # get stanza deprel
        stanza_anno = [[] for i in range(sens_len)]
        stanza_anno_deprel = [[] for i in range(sens_len)]
        for sen_index in range(len(doc_stanza.sentences)):
            dic_sentence = doc_stanza.sentences[sen_index].to_dict()
            sentence_sep.append(dic_sentence[0]["start_char"])

            for d in range(len(dic_sentence)):
                # print(d,dic_sentence[d])
                stanza_anno[sen_index].append(str(dic_sentence[d]))
                stanza_anno_deprel[sen_index].append(dic_sentence[d]['deprel'])

        sentence_sep.append(len(doc_pubtator.text))

        # save anno
        pubtator_anno = [[] for i in range(sens_len)]
        for anno in doc_pubtator.annotations:
            start = anno.start
            end = anno.end
            type = anno.type
            text = anno.text
            id = anno.id
            sen_num = get_sentense_num_by_loc(sentence_sep, end)
            pubtator_anno[sen_num].append(
                [sen_num, start, end, text, type, id])
            # print(sen_num,start,end,text,type,id)

        # anno type
        pubtator_anno_type = [[] for i in range(sens_len)]
        for i in range(len(pubtator_anno)):
            if pubtator_anno[i] != []:
                df = pd.DataFrame(pubtator_anno[i])
                pubtator_anno_type[i] = df[4].to_list()

        for i in range(sens_len):  # order 
            # print(i)
            # filter entity
            if all(elem in pubtator_anno_type[i] for elem in ['Gene', 'Chemical', 'PTM', 'KW','Disease']):
                out = [pmid,
                       str(i),
                       doc_stanza.sentences[i].text,
                       #  str(pubtator_anno[i]),
                       ",".join(pubtator_anno_type[i]),
                       #  str(stanza_anno[i]),
                       ",".join(stanza_anno_deprel[i])]
                sentences_stanza.append(out)
                out = "\t".join(out)
                out = out+"\n"
                f.write(out)
                f.flush()  

                # filter deprel
                # mapping pubtator anno to stanza
                ss = doc_stanza.sentences[i].to_dict()
                sp_alignment = ["" for elem in ss]
                sp = pubtator_anno[i]
                ss_df = []
                ss_df_header = ['id', 'text', 'lemma', 'upos',
                                'xpos', 'head', 'deprel', 'start_char', 'end_char']
                for some in ss:
                    ss_df.append(list(some.values()))
                ss_df = pd.DataFrame(ss_df)
                ss_df.columns = ss_df_header
                ss_df['pubtator'] = ""
                ss_df['pubtator_type'] = ""
                ss_df['pubtator_ori'] = ""
                sentences_dict["%s_%s" % (pmid, i)] = ss_df
                for elem in sp:
                    row = ss_df[ss_df['start_char'] == elem[1]]
                    ss_df.iloc[row.index, 9:12] = elem[3:6]

                for o in range(len(ss_df.columns)):
                    ss_df.iloc[:, o] = ss_df.iloc[:, o].astype(str)
                    out = "\t".join(ss_df.iloc[:, o])
                    out = "\t\t\t"+out+"\n"
                    f.write(out)
                    f.flush()  

    f.close()
    return (sentences_stanza, sentences_dict)

# 2sentense filter
def get_2sentense_stanza(file_pubtator_filtered="", save_stanza_file="", save_sentence_file=""):
    docs_pubtator =pickle.load(open(file_pubtator_filtered, "rb"))
    docs_stanza = pickle.load(open(save_stanza_file, "rb"))

    if len(docs_pubtator) != len(docs_stanza):
        print("[e] No same length of pubtator and stanza")
        return (0)

    f = open(save_sentence_file, 'w')
    sentences_stanza = []
    sentences_dict = {}
    for index in tqdm(range(len(docs_pubtator)), "sentence extact"):

        doc_pubtator = docs_pubtator[index]
        doc_stanza = docs_stanza[index]
        pmid = doc_pubtator.pmid
        sens_len = len(doc_stanza.sentences)

        sentence_sep = []

        stanza_anno = [[] for i in range(sens_len)]
        stanza_anno_deprel = [[] for i in range(sens_len)]
        for sen_index in range(len(doc_stanza.sentences)): #sen_index =0
            dic_sentence = doc_stanza.sentences[sen_index].to_dict()
            sentence_sep.append(dic_sentence[0]["start_char"])

            for d in range(len(dic_sentence)):
                # print(d,dic_sentence[d])
                stanza_anno[sen_index].append(str(dic_sentence[d]))
                stanza_anno_deprel[sen_index].append(dic_sentence[d]['deprel'])

        sentence_sep.append(len(doc_pubtator.text))

        pubtator_anno = [[] for i in range(sens_len)]
        for anno in doc_pubtator.annotations:
            start = anno.start
            end = anno.end
            type = anno.type
            text = anno.text
            id = anno.id
            sen_num = get_sentense_num_by_loc(sentence_sep, end)
            pubtator_anno[sen_num].append(
                [sen_num, start, end, text, type, id])
            # print(sen_num,start,end,text,type,id)

        pubtator_anno_type = [[] for i in range(sens_len)]
        for i in range(len(pubtator_anno)):
            if pubtator_anno[i] != []:
                df = pd.DataFrame(pubtator_anno[i])
                pubtator_anno_type[i] = df[4].to_list()

        for i in range(sens_len-1):  
            j=i+1

            if all(elem in pubtator_anno_type[i]+pubtator_anno_type[j] for elem in ['Gene', 'Chemical', 'PTM', 'KW', 'Disease']):
                out = [pmid,
                       "%s-%s"%(str(i),str(j)),
                       "%s %s"%(doc_stanza.sentences[i].text,doc_stanza.sentences[j].text),
                       #  str(pubtator_anno[i]),
                       "%s;%s"%(",".join(pubtator_anno_type[i]),",".join(pubtator_anno_type[j])),
                       #  str(stanza_anno[i]),
                       "%s;%s"%(",".join(stanza_anno_deprel[i]),",".join(stanza_anno_deprel[j]))]
                sentences_stanza.append(out)
                out = "\t".join(out)
                out = out+"\n"
                f.write(out)
                f.flush() 

                ## sentence 1
                ss = doc_stanza.sentences[i].to_dict()
                sp_alignment = ["" for elem in ss]
                sp = pubtator_anno[i]
                ss_df = []
                ss_df_header = ['id', 'text', 'lemma', 'upos',
                                'xpos', 'head', 'deprel', 'start_char', 'end_char']
                for some in ss:
                    ss_df.append(list(some.values()))
                ss_df = pd.DataFrame(ss_df)
                ss_df.columns = ss_df_header
                ss_df['pubtator'] = ""
                ss_df['pubtator_type'] = ""
                ss_df['pubtator_ori'] = ""
                for elem in sp:
                    row = ss_df[ss_df['start_char'] == elem[1]]
                    ss_df.iloc[row.index, 9:12] = elem[3:6]
                
                ## sentence 2
                ss2 = doc_stanza.sentences[j].to_dict()
                sp2_alignment = ["" for elem in ss2]
                sp2 = pubtator_anno[j]
                ss2_df = []
                ss2_df_header = ['id', 'text', 'lemma', 'upos',
                                'xpos', 'head', 'deprel', 'start_char', 'end_char']
                for some in ss2:
                    ss2_df.append(list(some.values()))
                ss2_df = pd.DataFrame(ss2_df)
                ss2_df.columns = ss2_df_header
                ss2_df['pubtator'] = ""
                ss2_df['pubtator_type'] = ""
                ss2_df['pubtator_ori'] = ""
                for elem in sp2:
                    row = ss2_df[ss2_df['start_char'] == elem[1]]
                    ss2_df.iloc[row.index, 9:12] = elem[3:6]
                
                ## concat
                ss_df=pd.concat([ss_df,ss2_df])
                sentences_dict["%s_%s-%s" % (pmid, i,j)] = ss_df

                for o in range(len(ss_df.columns)):
                    ss_df.iloc[:, o] = ss_df.iloc[:, o].astype(str)
                    out = "\t".join(ss_df.iloc[:, o])
                    out = "\t\t\t"+out+"\n"
                    f.write(out)
                    f.flush()  # 强制将内容写入磁盘

    f.close()
    return (sentences_stanza, sentences_dict)

#%% filter sentence by rule
def rule_check(sens, rule,match_ratio=1):
    df = sens[sens['pubtator'] != '']

    PTM_id = df[df['pubtator_type'] == "PTM"]['id'].to_list()
    Gene_head = df[df['pubtator_type'] == "Gene"]['head'].to_list()
    if all(item not in Gene_head for item in PTM_id):
        return False

    PTM_upos = df[df["pubtator_type"] == "PTM"]["upos"].to_list()
    PTM_deprel = df[df["pubtator_type"] == "PTM"]["deprel"].to_list()
    Gene_upos = df[df["pubtator_type"] == "Gene"]["upos"].to_list()
    Gene_deprel = df[df["pubtator_type"] == "Gene"]["deprel"].to_list()
    KW_upos = df[df["pubtator_type"] == "KW"]["upos"].to_list()
    KW_deprel = df[df["pubtator_type"] == "KW"]["deprel"].to_list()
    Disease_upos = df[df["pubtator_type"] == "Disease"]["upos"].to_list()
    Disease_deprel = df[df["pubtator_type"] == "Disease"]["deprel"].to_list()
    Chemical_upos = df[df["pubtator_type"] == "Chemical"]["upos"].to_list()
    Chemical_deprel = df[df["pubtator_type"] == "Chemical"]["deprel"].to_list()

    for rule_index in range(len(rule)):
        rule_index = 0
        r = rule.iloc[rule_index, :].to_list()
        # if (r[0] in PTM_upos) and (r[1] in PTM_deprel) and \
        #     (r[2] in KW_upos) and (r[3] in KW_deprel) and \
        #     (r[4] in Gene_upos) and (r[5] in Gene_deprel) and  \
        #     (r[6] in Disease_upos) and (r[7] in Disease_deprel) and \
        #     (r[8] in Chemical_upos) and (r[9] in Chemical_deprel):
        #     return True
        check=[(r[0] in PTM_upos),(r[1] in PTM_deprel),
            (r[2] in KW_upos) , (r[3] in KW_deprel),
            (r[4] in Gene_upos), (r[5] in Gene_deprel),
            (r[6] in Disease_upos) ,(r[7] in Disease_deprel) ,
            (r[8] in Chemical_upos) ,(r[9] in Chemical_deprel)]
        
        if sum(check)/len(check) >= match_ratio:
            return True
        
    return False

## filter sentences by rule
def sentence_rule_filter(sentences,rule_file="",save_file=""):
    
    sentences_stanza = sentences[0]
    sentences_stanza_dict = {}
    for i in sentences_stanza:
        sentences_stanza_dict["%s_%s" % (i[0], i[1])] = i

    sentences_dict = sentences[1]

    data = pd.read_csv(rule_file, index_col=0)
    rule = data.iloc[:, 0:10].drop_duplicates()

    filtered_sentences=[]
    for sens in tqdm(sentences_dict):
        # print(sens)
        # print(sentences_dict[sens])
        if rule_check(sentences_dict[sens],rule,match_ratio=0.8):
            filtered_sentences.append(sens)

    f=open(save_file,"w")
    for i in filtered_sentences:
        pmid=i.split("_")[0]
        sens=i.split("_")[1]
        text=sentences_stanza_dict[i][2]
        sens=sentences_dict[i]
        

        # df = sens[sens['pubtator'] != '']
        df = sens
        gene=",".join(df[df['pubtator_type']=="Gene"]['pubtator'].to_list())
        ptm=",".join(df[df['pubtator_type']=="PTM"]['pubtator'].to_list())
        dis=",".join(df[df['pubtator_type']=="Disease"]['pubtator'].to_list())
        drug=",".join(df[df['pubtator_type']=="Chemical"]['pubtator'].to_list())
        kw=",".join(df[df['pubtator_type']=="KW"]['pubtator'].to_list())
        f.write("%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n"%(i,pmid,text,gene,ptm,dis,drug,kw))
        for o in range(len(df.columns)):
            out = "\t".join(df.iloc[:, o])
            out = "%s\t\t"%i+out+"\n"
            f.write(out)
            f.flush()
        
    f.close()
    return filtered_sentences
