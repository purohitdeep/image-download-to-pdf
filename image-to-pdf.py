#!/usr/bin/python3

from fpdf import FPDF
from os import listdir
from os.path import isfile, join
import re

# Program starts
dir_path = "/Users/deep/Codez/image-download-project/dhruv/"

onlyfiles = [f for f in listdir(dir_path)]

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    '''
    alist.sort(key=natural_keys) sorts in human order
    http://nedbatchelder.com/blog/200712/human_sorting.html
    (See Toothy's implementation in the comments)
    '''
    return [ atoi(c) for c in re.split(r'(\d+)', text) ]

#remove a dummy file which pops up
onlyfiles.remove('.DS_Store')
onlyfiles.sort(key=natural_keys)

print(onlyfiles)

pdf = FPDF()
pdf.add_page()

for img in onlyfiles:
    path = dir_path + img
    print(path)
    # pdf.image(path,None,None,210,297)
    pdf.image(path,None,None,0,0)

pdf.output('Aawaj_ki_tabahi.pdf', 'F')