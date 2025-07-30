from Bio import Entrez
from Bio import Medline
from tqdm import tqdm
import pandas as pd
import csv
import os
import re
import time
from datetime import datetime


def download_pubmed(email, query, save_file):
    Entrez.email = email
    handle = Entrez.esearch(db="pubmed", term=query)
    record_all = Entrez.read(handle)
    count = int(record_all["Count"])
    TranslationSet = record_all["TranslationSet"]
    TranslationSet = extract_keywords(str(TranslationSet))
    TranslationSet.insert(0, query)
    TranslationSet = list(set(TranslationSet))
    now = datetime.now()
    formatted_time = now.strftime("%Y-%m-%d %H:%M:%S")

    with open(save_file, 'a', encoding="utf-8") as file:
        _ = file.write('%s\t%s\t%s%s%s\t%s\n' % (query,
                                                 count,
                                                 '"',
                                                 '", "'.join(TranslationSet),
                                                 '"',
                                                 formatted_time))
    print(count)


def extract_keywords(string):
    pattern = r'"([^"]*)"'
    keywords = re.findall(pattern, string)
    return keywords


def main(trans_file,save_file):
    email = "2210791@tongji.edu.cn"
    trans_file = pd.read_csv(trans_file)
    query_keywords = trans_file['Word'].to_list()
    for k in query_keywords:
        download_pubmed(email, k, save_file)


main(trans_file="../data/PTM_type.dbPTM.csv",save_file="output/PTM-TranslationSet.xls")
main(trans_file="../data/Keyword.csv",save_file="output/Keyword-TranslationSet.xls")