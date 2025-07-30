import os
import time
import tqdm
import glob
import pickle
import stanza
import pandas as pd
from datetime import datetime
from funcs import logging
from funcs import get_2sentense_stanza
from funcs import sentence_rule_filter
# logging(content="asdasdasd")


def LM_2sentens(file):
    # file_medline = "/home/zhengjie/Project/PMADS/data/pubmed_download/13.medline"
    k = file.split("/")[-1]
    postfix = k.split("_")[-1][:-4]
    file_pubmed_batch = "output/step2_pubmed.batch_%s.xls" % (postfix)
    file_failed_pubmed = "output/pubmed_failed.txt"
    file_pubtator = "output/step3_Pubtator_out_%s.txt" % (postfix)
    file_pubtator_failed = "output/step3_Pubtator_fail_%s.txt" % (postfix)
    # file_pubtator_filtered = "output/step4_docs_filtered_%s.pkl" % (postfix)
    file_pubtator_filtered = "output/step4_docs_filtered_%s.pkl" % (postfix)
    # file_stanza = "output/step5_docs_filtered_%s.pkl" % (postfix)
    file_stanza = "output/step5_docs_filtered_%s.pkl" % (postfix)
    file_stanza_sentence = "output/step7_2sentence_filtered_%s.pkl" % (postfix)

    # # %% get stanza
    logging(file="pipline_2sentence.log",content="step8 file_pubtator_filtered start!")
    sentences = get_2sentense_stanza(file_pubtator_filtered= file_pubtator_filtered, save_stanza_file=file_stanza,save_sentence_file=file_stanza_sentence )
    logging(file="pipline_2sentence.log",content="step7 2sentense_stanza: %s"%len(sentences[0]))
    
    # %% Re-extracting the rules, the 2-sentence kind
    file_rule="output/deprel_create/dp_rules_2sentence.csv"
    file_out="output/step8_pmid_sens_%s.txt"%(postfix)
    logging(file="pipline_2sentence.log",content="step8 rule filter start!")
    out=sentence_rule_filter(sentences=sentences,rule_file=file_rule,save_file=file_out)
    logging(file="pipline_2sentence.log",content="step8 rule filter num: %s"%len(out))



def main():
    files = glob.glob('/home/zhengjie/Project/PMADS/output/step5_docs_filtered_*.pkl')
    k=1
    for file in files:
        logging(file="pipline_2sentence.log",content="Start %s: %s"%(k,file),log_type="[S]")
        try:
            LM_2sentens(file)
        except:
            logging(file="pipline_2sentence.log",content="Failed!",log_type="[E]")
        k=k+1

if __name__ == '__main__':
    main()