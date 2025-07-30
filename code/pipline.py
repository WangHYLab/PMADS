import os
import time
import tqdm
import glob
from datetime import datetime
from funcs import logging
from funcs import extract_medline
from funcs import get_Pubtator
from funcs import filter_doc
from funcs import get_sentense_stanza
from funcs import get_2sentense_stanza
from funcs import sentence_rule_filter
# logging(content="asdasdasd")


def LM(search_word):
    ## timestamp
    postfix = datetime.fromtimestamp(time.time()).strftime('%Y%m%d%H%M%S')
    
    logging(content="Pipline start with search: %s" % search_word)

    # %% 1 down pubmed paper
    logging(content="step1 pubmed_download start!")
    file_medline = 'output/step1_pubmed_%s.medline' % (postfix)
    cmd = 'esearch -db pubmed -query "%s" | efetch -format medline >%s' % (search_word, file_medline)
    logging(content="step1 cmd: %s"%cmd)
    os.system(cmd)
    logging(content="step1 finished!")

    # %% 2 medline extract
    # k=file_medline.split("/")[-1]
    # postfix=k.split(".")[0]
    
    logging(content="step2 medline_extract start!")
    file_pubmed_batch = "output/step2_pubmed.batch_%s.xls" % (postfix)
    file_failed_pubmed = "output/pubmed_failed.txt"

    num=extract_medline(medline_file=file_medline,
                    save_file=file_pubmed_batch, failed_file=file_failed_pubmed)
    logging(content="step2 download doc num: %s"%num)
    logging(content="step2 finished!")

    if num == 0:
        return

    # %% 3 Obtaining entity identification results from pubtator based on literature pmid, and filtering to reduce stanza analysis time
    logging(content="step3 Pubtator start!")
    file_pubtator="output/step3_Pubtator_out_%s.txt"% (postfix)
    file_pubtator_failed="output/step3_Pubtator_fail_%s.txt"% (postfix)
    get_Pubtator(pubmed_batch_file=file_pubmed_batch,save_file=file_pubtator,fail_file=file_pubtator_failed,batch_size=10)

    logging(content="step3 finished!")

    #%% KW PTM recognition
    #%% 4 filter and save docs

    logging(content="step4 Pubtator_filtered start!")
    file_pubtator_filtered="output/step4_docs_filtered_%s.pkl"%(postfix)
    docs_filtered=filter_doc(pubtator_file=file_pubtator,save_file=file_pubtator_filtered)
    logging(content="step4 filtered docs num: %s"%len(docs_filtered))
    logging(content="step4 finished!")

    # %% 5 进行stanza的分析按实体筛选句子
    logging(content="step5 Stanza start!")
    file_stanza="output/step5_docs_filtered_%s.pkl"%(postfix)
    file_stanza_sentence="output/step5_sentence_filtered_%s.pkl"%(postfix)
    sentences=get_sentense_stanza(docs=docs_filtered, save_stanza_file=file_stanza,save_sentence_file=file_stanza_sentence)
    logging(content="step5 filter sentence by entity num: %s"%len(sentences[1].keys()))
    logging(content="step5 finished!")

    # %% 6 规则提取
    logging(content="step6 sentence_rule_filter start!")

    file_rule="output/deprel_create/dp_rule.csv"
    file_out="output/step6_pmid_sens_%s.txt"%(postfix)
    out=sentence_rule_filter(sentences=sentences,rule_file=file_rule,save_file=file_out)
    logging(content="step6 rule filter num: %s"%len(out))
    logging(content="step6 finished!")

    file_stanza_sentence = "output/step7_2sentence_filtered_%s.pkl" % (postfix)

    # # %% 7 提取stanza结果,进行stanza的分析按实体筛选句子
    logging(content="step7 file_pubtator_filtered start!")
    sentences_2 = get_2sentense_stanza(file_pubtator_filtered= file_pubtator_filtered, save_stanza_file=file_stanza,save_sentence_file=file_stanza_sentence )
    logging(content="step7 2sentense_stanza: %s"%len(sentences_2[0]))
    
    # %% 8 重新提取规则，2句子那种
    file_rule="output/deprel_create/dp_rules_2sentence.csv"
    file_out="output/step8_pmid_sens_%s.txt"%(postfix)
    logging(content="step8 rule filter start!")
    out=sentence_rule_filter(sentences=sentences_2,rule_file=file_rule,save_file=file_out)
    logging(content="step8 rule filter num: %s"%len(out))

    logging(content="Finished!")

def main():
    file = "data/search_phrase.csv"
    search_names=[]
    for line in open(file):
        if line.startswith("search") or line.startswith("Other"):
            continue
        else:
            line = line.strip().split(",")
            search_names.append(line[0])

    error_file= open("/home/zhengjie/Project/PMADS/Error.txt","w")
    k=1
    for name in search_names:
        logging(content="Start %s: %s" % (k, name), log_type="[S]")
        try:
            LM(name)
        except:
            logging(content="Failed!",log_type="[E]")
            error_file.write(name+"\n")
        k=k+1

    error_file.close()
    os.system("cat /home/zhengjie/Project/PMADS/output/*pmid_sens_*.txt >pipline_out.txt")


if __name__ == '__main__':
    main()

