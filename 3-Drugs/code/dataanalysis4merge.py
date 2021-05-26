# -*- coding: utf-8 -*-
# File refactored on November 2020
# code to analyze marta's raw output.
# integrate marta's lsit of drugs, and do a command line style to select the
# case 
# we do merging of two or more ranked lsits via the crak merging procedure
# incorporating da drug names filter

import os
import math

##################################################
# import generic utilities

from generic_util import printmap, printlist
  
###########################################################
# importing the main metatadata mapping from a sparate file
from metadata_file import tablemap


###########################
# import drug annotations

#from literaturedb import trials 
#from literaturedb import strongliterature 
#from literaturedb import weakliterature  
#from literaturedb import nodatafound  

from literaturedb import getannotation, updatecounters

##############################################
# import file handling utils

from file_handling_util import testexistencedirectory, testexistencefile

##############################################
# import parsing utils

from file_parsing import stingnormalize, converttofloat, 


###########################################################
# find unique drug an input list, returns a map 

def uniquedrug(inlist) :

    print "Reboving duplicates. Our format record: (index, drug, pvalue)"

    outdir = {}
    dupl = 0
    for x in inlist :
        key = x[1]
        if key in outdir.keys() :
            dupl += 1
            minpval = min(x[2], outdir[key][2])
            outdir[key][2] = minpval
        else :
            outdir[key] = x
    print "number of duplications, ", dupl
    return outdir

         

#############################################################
##
##indirectory1='.'
##infilename1 ='enrichR_ClustEx900_Drug_Perturbations_from_GEO_2014_perc.csv'
##l1 = parsefile(indirectory1, infilename1, 'original')
##l2 = uniquedrug(l1)
##print len(l2)
##printmap(l2)
##
#############################################################
##indirectory1='./ClinicalTrials'
##infilename1 ='enrichR_ClustEx900_Drug_Perturbations_from_GEO_2014_perc_ct.csv'
##l7 = parsefile(indirectory1, infilename1, 'posttrialfilter')
##l8 = uniquedrug(l7)
##print len(l8)
##printmap(l8)
##
#############################################################
##
##indirectory1='.'
##infilename1 ='enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv'
##l3 = parsefile(indirectory1, infilename1, 'original')
##l4 = uniquedrug(l3)
##print len(l4)
##printmap(l4)
##
#############################################################
##indirectory1='./ClinicalTrials'
##infilename1 ='enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc_ct.csv'
##l5 = parsefile(indirectory1, infilename1, 'posttrialfilter')
##l6 = uniquedrug(l5)
##print len(l6)
##printmap(l6)
##



#######################################################################

def reranking(indir) :

    inlist = []
    outdir = {}
    for k in indir.keys():
        inlist.append(indir[k])

    sorted_by_third = sorted(inlist, key=lambda tup: tup[2])

    for x in range(len(sorted_by_third)):
#        print sorted_by_third[x]
        sorted_by_third[x].append(x+1)

    for x in range(len(sorted_by_third)):
        key = sorted_by_third[x][1]
        item = sorted_by_third[x]
        outdir[key] = item
#        print item

    return (outdir, sorted_by_third)
        
#########################################################################

def computeinvranstst(initial, posttrial, algstr):

    print "***********************************************"
    (rankedinitial, rankedinitiallist) = reranking(initial)

    printmap(rankedinitial, "Initial drug-to-its-record map in computation of mean inverse rank")
    printlist(rankedinitiallist, "Initial ranked list in computation of mean inverse rank")     

    suminvrserank = 0
    precisionat20 = 0
    for x in posttrial.keys() :
        if x in rankedinitial.keys() :
            print x, rankedinitial[x]
            suminvrserank += 1.0/float(rankedinitial[x][3])
            if rankedinitial[x][3] <= 19 :
                precisionat20 += 1
                
        else :
            print x, "no data "

    print "suminvrserank , prec at 20 :", algstr, suminvrserank, precisionat20


###########################################################
# 
# a variant of the below that prints out in rank order..

def computeinvranstst2bis(initial, trialdrugsmap, algstr):

    print "bis***********************************************"
    (rankedinitial, rankedinitiallist) = reranking(initial)

    printmap(rankedinitial, "Initial drug-to-its-record map in computation of mean inverse rank")
    printlist(rankedinitiallist, "Initial ranked list in computation of mean inverse rank")     

    suminvrserank = 0
    precisionat20 = 0
    outlist = []
    accum = [0,0,0,0]
    for x in rankedinitiallist :
        if x[3] <= 20 :
            newdata = getannotation(x[1])
#            accum = updatecounters(accum, newdata[:4])
            accum = updatecounters(accum, newdata)
        
        if x[1] in trialdrugsmap.keys() :
            print x[1], x, 1.0/float(x[3])
            outlist.append((x[1], x, 1.0/float(x[3])))
            suminvrserank += 1.0/float(x[3])
            if x[3] <= 20 :
                precisionat20 += 1 
        else :
            print x[1], x, "no trial data "
            outlist.append((x[1], x, "no trial data "))

    print "suminvrserank , prec at 20 :", algstr, suminvrserank, precisionat20
    return (algstr, suminvrserank, precisionat20, accum, outlist)

####################################################################
#
#  take as input a lsit of trial drugs and an inital mapping (to be reordered)

def computeinvranstst2(initial, trialdrugsmap, algstr):

    print "***********************************************"
    (rankedinitial, rankedinitiallist) = reranking(initial)

    printmap(rankedinitial, "Initial drug-to-its-record map in computation of mean inverse rank")
    printlist(rankedinitiallist, "Initial ranked list in computation of mean inverse rank")     

    suminvrserank = 0
    precisionat20 = 0
    for x in trialdrugsmap.keys() :
        if x in rankedinitial.keys() :
            print x, rankedinitial[x], 1.0/float(rankedinitial[x][3])
            suminvrserank += 1.0/float(rankedinitial[x][3])
            if rankedinitial[x][3] <= 19 :
                precisionat20 += 1
 
        else :
            print x, "no data "

    print "suminvrserank , prec at 20 :", algstr, suminvrserank, precisionat20
    return (algstr, suminvrserank, precisionat20)








#############################################################################
#


##print "clutsex"
##computeinvranstst(l2,l8)
##print "ceoreandpeel"
##computeinvranstst(l4,l6)
##print "************************"
##venndiagramdrugs("clustex", l8, "coreandpeel", l6)
##

##########################################
#
#
def uploaduniquemap(index, maintable):

    fileformat = maintable[index][5]

    print "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print "Processing ", maintable[index][0], fileformat

    indirectory1= maintable[index][1]
    infilename1 = maintable[index][2]
    a1 = parsefile(indirectory1, infilename1, 'original', fileformat)
    b1 = uniquedrug(a1)
    print len(b1)
    printmap(b1, "Map of drugs enriched in the active network, after duplicate removal")


    indirectory1= maintable[index][3]
    infilename1 = maintable[index][4]
    a2 = parsefile(indirectory1, infilename1, 'posttrialfilter', fileformat)
    b2 = uniquedrug(a2)
    print len(b2)
    printmap(b2, "Map of drugs enriched in the active network that are also on trial (old method), after duplicate removal")

    return(b1,b2)

########################################################################

##for i in range(len(maintable)):
##
##    (pretrial, posttrial) = uploaduniquemap(i)
##    computeinvranstst(pretrial, posttrial, maintable[i][0])

########################################################################

##for i in range(5,6):
##
##    (pretrial, posttrial) = uploaduniquemap(i)
##    computeinvranstst(pretrial, posttrial, maintable[i][0])
    

def oneexperiment(algindex, gedatastring, drugstring, maintable):

    (pretrial, posttrial) = uploaduniquemap(algindex, maintable)

    if 'Cyclosporin_A' in pretrial.keys() :
        print "Adding Cyclosporin_A" 
        posttrial['Cyclosporin_A'] =   pretrial['Cyclosporin_A']
    else :
        print "No adding"

    computeinvranstst(pretrial, posttrial, maintable[algindex][0])


################################################################
# new version loading ct drug names from file

def read_file(file_name):
    res = list()
    r = open(file_name)
    for line in r:
            line = line.split('\n')
            res.append(line[0])
    r.close()
    return(res)

def lcs(S,T):
    m = len(S)
    n = len(T)
    counter = [[0]*(n+1) for x in range(m+1)]
    longest = 0
    lcs_set = set()
    for i in range(m):
        for j in range(n):
            if S[i] == T[j]:
                c = counter[i][j] + 1
                counter[i+1][j+1] = c
                if c > longest:
                    lcs_set = set()
                    longest = c
                    lcs_set.add(S[i-c+1:i+1])
                elif c == longest:
                    lcs_set.add(S[i-c+1:i+1])

    return lcs_set


#########################################
#
#
exceptionslist = [
        ('vitamin_a','vitamin c'),
        ('vitamin_c', 'vitamin_d'),
        ('vitamin_c', 'vitamin_a_palmitate'),
        ('vitamin_c', 'vitamin_a_solubilized'),
        ('vitamin_c', 'vitamin_k1'),
        ('vitamin_e','vitamin c'),
        ('vitamin_a','vitamin d'),
        ('vitamin_e','vitamin d'),
        ('vitamin_a', '25-hydroxyvitamin d3'),
        ('vitamin_e', '25-hydroxyvitamin d3'),
        ('vitamin_d', 'vitamin_a'),
        ('vitamin_d', 'vitamin_a_palmitate'),
        ('vitamin_d', 'vitamin_a_solubilized'),
        ('vitamin_d', 'vitamin_k1'),
        ('decitabine', 'emtricitabine'),
        ('Furan', 'isoflurane'),
        ('Furan', 'sevoflurane'),
        ('Cholic_Acid', 'folic acid'),
        ('Mevastatin', 'atorvastatin'),
    ]

from barabasi_list_testing import findmatchingsecondlist

# give teo lsits reports closest match in the second sit for all items in teh first lsit
##def findmatchingsecondlist(firstlist , secondlist):
##    
##    print "Size first list : " , len(firstlist)
##    print "Size second list : " , len(secondlist)
##    
##
##    #my code
##    drug_ct = dict()
##    for key in firstlist:
##        if key != None :
##            for drug in secondlist:
##                keynorm = stingnormalize(key.lower())
##                drugnorm = stingnormalize(drug.lower())
##                long_str = lcs(keynorm,drugnorm)
##                for s in long_str:
##                    ratio = float(len(s))/float(len(keynorm))
##                    if ratio >= 0.8 :
##                        print "matching: ratio , lcs, (key,drug) (keynorm,drugnorm ", ratio, s, (key,drug) , (keynorm, drugnorm)
##                        #drug_ct.add(key)
##                        if (keynorm, drugnorm) not in exceptionslist :                        
##                            if keynorm not in drug_ct.keys() :
##                                drug_ct[keynorm] = (ratio, drugnorm)
##                            else :
##                                if drug_ct[keynorm][0] < ratio :
##                                    drug_ct[keynorm] = (ratio, drugnorm)
##                                else :
##                                    print "keep the better match ", keynorm, drug_ct[keynorm] 
##                        else :
##                            print "Exception list rised ", (keynorm, drugnorm)
##
##    
##    return drug_ct

def oneexperimentnew(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag):

    # uplaod the algorithmic ranking of drugs
    fileformat = maintable[algindex][5]
 
    print "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print "Processing ", maintable[algindex][0], fileformat

    indirectory1= maintable[algindex][1]
    infilename1 = maintable[algindex][2]
    a1 = parsefile(indirectory1, infilename1, 'original', fileformat)
    b1 = uniquedrug(a1)
    if fdadrugsonlyflag :
        fda = read_file('../FDA_approved_drugs_filtered_unique.txt')
        fda2 = [s.lower() for s in fda]
        listdm2 = b1.keys()    
        drugmap = findmatchingsecondlist(listdm2 , fda2, '.', 'fda_filter_dump.txt')
        print "###############"
        printmap( drugmap, "After fda filtering")
        b2 = {}
        for key in b1.keys() :
            if key in drugmap.keys() :
                b2[key] = b1[key]
        b1 = b2
                
        
    
    print "Ranking from algorithm, after duplicate removal num records: ", len(b1)
    printmap(b1, "Map of drugs enriched in the active network, after duplicate removal")

    # uplaod the dt drug list 

    ct = read_file('../ClinicalTrials_drugs_new_myFiltering_unique.txt')
    printlist(ct, "All drugs in current trials (new listing)")    

# mart's code
##    drug_ct = set()
##    for key in b1:
##        for drug in ct:
##            long_str = lcs(key,drug)
##            for s in long_str:
##                if len(s) >= (len(key) * 80)/100 :
##                    print "matching key , ct-drug", key, s, drug
##                    drug_ct.add(key)

#my code
    drug_ct = dict()
    for key in b1:
        if key != None :
            for drug in ct:
                a = stingnormalize(key.lower())
                b = stingnormalize(drug.lower())
                long_str = lcs(a,b)
                for s in long_str:
                    ratio = float(len(s))/float(len(key))
                    if ratio >= 0.8 :
                        print "matching key , lcs, ct-drug, ratio, noormstrky , normdrug ", key, s, drug, ratio, a, b
                        #drug_ct.add(key)
                        if (key, drug) not in exceptionslist :                        
                            if key not in drug_ct.keys() :
                                drug_ct[key] = (ratio, drug)
                            else :
                                if drug_ct[key][0] < ratio :
                                    drug_ct[key] = (ratio, drug)
                                else :
                                    print "better match", key, drug_ct[key] 
                        else :
                            print "Exception rised ", (key, drug)
                            
                            
                        
                        
                    

                    

#    drug_ct = list(drug_ct)
#    print(drug_ct)
    printmap(drug_ct, "Drugs enriched in the current network that are on trial")

#    computeinvranstst2(b1, drug_ct, maintable[algindex][0])
    (algstr, suminvrserank, precisionat20, accum, outlist) = computeinvranstst2bis(b1, drug_ct, maintable[algindex][0])
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print (algstr, suminvrserank, precisionat20, accum)
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(outlist, algstr)
    return b1


##########################################################
#
# command line support
#

import argparse

def mainfunction():
    parser = argparse.ArgumentParser(description='Code for running ranking measueremtns on covid19 enriched drugs')
    ##parser.add_argument('integers', metavar='N', type=int, nargs='+',
    ##                    help='an integer for the accumulator')
    ##parser.add_argument('--sum', dest='accumulate', action='store_const',
    ##                    const=sum, default=max,
    ##                    help='sum the integers (default: find the max)')

    parser.add_argument('algindex',
                        action='store',
                        type=int,
                        choices=range(7),
                        help='Algoritm index 0=c&pd5j8, 1=c&pd7j8, 2=clex3380  , 3=clex1890,  4=MD, 5=Degas, 6=KPM')

                        
    parser.add_argument('gedataset',
                        action='store',
                        choices=["balf", "pbmc", "cells"],
                        help='Defines the gene expression data set')

    parser.add_argument('drugset',
                        action='store',
                        choices=["GEO", "DM"],
                        help='Defines the drug data set')
   
    parser.add_argument('triallist',
                        action='store',
                        choices=["old", "new"],
                        help='Defines the lidt of drugs on trial old or new')
  

    args = parser.parse_args()

# print out arguments

    print("algindex ", args.algindex)
    print('GEdataset', args.gedataset)
    print('drugset', args.drugset)
    print('triallist', args.triallist)
    

    maintable = tablemap[(args.gedataset,args.drugset)]
    if args.triallist == 'old' :   
        oneexperiment(args.algindex, args.gedataset, args.drugset, maintable)
    else :
        oneexperimentnew(args.algindex, args.gedataset, args.drugset, maintable)
        


###############################################
# main


##################################################################################################
# testing the list meging code

# data preapration

def oneexperimentnewmap(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag):

    # uplaod the algorithmic ranking of drugs
    fileformat = maintable[algindex][5]
 
    print "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print "Processing ", maintable[algindex][0], fileformat

    indirectory1= maintable[algindex][1]
    infilename1 = maintable[algindex][2]
    a1 = parsefile(indirectory1, infilename1, 'original', fileformat)
    b1 = uniquedrug(a1)
    if fdadrugsonlyflag :
        fda = read_file('../FDA_approved_drugs_filtered_unique.txt')
        fda2 = [s.lower() for s in fda]
        listdm2 = b1.keys()    
        drugmap = findmatchingsecondlist(listdm2 , fda2, '.', 'fda_filter_dump.txt')
        print "###############"
        printmap( drugmap, "After fda filtering")
        b2 = {}
        for key in b1.keys() :
            if key in drugmap.keys() :
                b2[key] = b1[key]
        b1 = b2
 
    
    print "Ranking from algorithm, after duplicate removal num records: ", len(b1)
    printmap(b1, "Map of drugs enriched in the active network, after duplicate removal")
    return b1

#################################################################################
# upload trial drugs by name

ct = read_file('../ClinicalTrials_drugs_new_myFiltering_unique.txt')
printlist(ct, "All drugs in current trials (new listing)")    


def uploadtrialdrugs(inmap) :

    b1 = inmap


# mart's code
##    drug_ct = set()
##    for key in b1:
##        for drug in ct:
##            long_str = lcs(key,drug)
##            for s in long_str:
##                if len(s) >= (len(key) * 80)/100 :
##                    print "matching key , ct-drug", key, s, drug
##                    drug_ct.add(key)

#my code
    drug_ct = dict()
    for key in b1:
        if key != None :
            for drug in ct:
                a = stingnormalize(key.lower())
                b = stingnormalize(drug.lower())
                long_str = lcs(a,b)
                for s in long_str:
                    ratio = float(len(s))/float(len(key))
                    if ratio >= 0.8 :
                        print "matching key , lcs, ct-drug, ratio, noormstrky , normdrug ", key, s, drug, ratio, a, b
                        #drug_ct.add(key)
                        if (key, drug) not in exceptionslist :                        
                            if key not in drug_ct.keys() :
                                drug_ct[key] = (ratio, drug)
                            else :
                                if drug_ct[key][0] < ratio :
                                    drug_ct[key] = (ratio, drug)
                                else :
                                    print "better match", key, drug_ct[key] 
                        else :
                            print "Exception rised ", (key, drug)
                            
    printmap(drug_ct, "Drugs enriched in the current network that are on trial")                     
    return  drug_ct                   
      

###########################################################
# take as input a lsit of trial drugs and an inital mapping (to be reordered)
# drug name as last element of a list. 

def computeinvranstst3(initiallist, trialdruglist, algstr):

    print "***********************************************"
##    (rankedinitial, rankedinitiallist) = reranking(initial)
##
##    printmap(rankedinitial, "Initial drug-to-its-record map in computation of mean inverse rank")
##    printlist(rankedinitiallist, "Initial ranked list in computation of mean inverse rank")     

    suminvrserank = 0
    precisionat20 = 0
    rankedlist = []
    accum = [0,0,0,0]
    for x in range(len(initiallist)) :
#        drugname = initiallist[x][3]
        drugname = initiallist[x][-1]

        if x <= 19 :
            newdata = getannotation(drugname)
#            accum = updatecounters(accum, newdata[:4])
            accum = updatecounters(accum, newdata)
 
                    
        if drugname in trialdruglist :
            print x, drugname, 1.0/float(x+1)
            rankedlist.append(( x, drugname, 1.0/float(x+1)))
            suminvrserank += 1.0/float(x+1)
            if x <= 19 :
                precisionat20 += 1
        else :
            print x,  drugname, "no trial "
            rankedlist.append((x,  drugname, "no trial "))

    print "suminvrserank (MRR), prec-at-20 : ", algstr, suminvrserank, precisionat20
    return (algstr, suminvrserank, precisionat20, accum, rankedlist)


#####################################################
# imports x merging

import numpy as np
from scipy import stats
from raa import rra


##############################################################################
# tun pvalue to -log10 format

def minuslog10(y) :
    if y == 0.0 :
        return 1000
    else :
        return -math.log10(y)

###################################################
# mege two rankings on the intersection drugs

def mergetworunsonintrsctiondrugs(alg1, gedata1, drugdb1 , alg2, gedata2, drugdb2, fdadrugsonlyflag ) :   

    algindex = alg1
    gedatastring = gedata1
    drugstring =  drugdb1
    maintable = tablemap[(gedatastring,drugstring)]
    algstring1 =  maintable[algindex][0]
    map1 = oneexperimentnewmap(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag)

    algindex = alg2
    gedatastring = gedata2
    drugstring = drugdb2
    maintable = tablemap[(gedatastring,drugstring)]
    algstring2 =  maintable[algindex][0]
    map2 = oneexperimentnewmap(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag)

    # key handling, intersection, difference
    a = set(map1.keys())
    b = set(map2.keys())
    inters = a&b
    diff1 = a-b
    diff2 = b-a
    print  len(a&b) , len(a-b), len(b-a)

    # three lists
    listinters1 = [(x, map1[x]) for x in inters]
    listinters2 = [(x, map2[x]) for x in inters]

    printlist(listinters1, "first intersection list")
    printlist(listinters2, "second intersection list")

    

    druglist = list(inters)
    vector1 = [  minuslog10(map1[x][2])  for x in druglist]
    print "vector1", vector1
    vector2 = [  minuslog10(map2[x][2])  for x in druglist]
    print "vector2", vector2

######################################################
# handling of difference lists

##min1 = min([minuslog10(map1[x][2])  for x in map1.keys()])
##min2 = min([minuslog10(map2[x][2])  for x in map2.keys()])
##
##print "Min1, Min2 ", min1, min2
##
##druglistdiff12 = list(diff1)
##druglistdiff21 = list(diff2)
##
##vectordiff12 = [  minuslog10(map1[x][2])  for x in druglistdiff12]
##vectordiff21 = [  minuslog10(map2[x][2])  for x in druglistdiff21]
##print "vectordiff12", vectordiff12
##print "vectordiff21", vectordiff21
##
##max1 = max(vectordiff12)
##max2 =  max(vectordiff21)
##print "max1, max2 ", max1, max2
##
### scaling down
##vectordiff12scaled = [ x*(min2/max1)  for x in  vectordiff12]
##vectordiff21scaled = [ x*(min1/max2)  for x in  vectordiff21]
##print "vectordiff12scaled", vectordiff12scaled
##print "vectordiff21scaled", vectordiff21scaled
##
##inputmatrix12 = [(vectordiff12[x],vectordiff12scaled[x]) for x in range(len(druglistdiff12))]
##inputmatrix21 = [(vectordiff21scaled[x], vectordiff21[x]) for x in range(len(druglistdiff21))]
##
##printlist(druglistdiff12, "druglistdiff12")
##printlist(inputmatrix12, "inputmatrix12")
##printlist(druglistdiff21, "druglistdiff21")
##printlist(inputmatrix21, "inputmatrix21")


##inputnpmatrix12 = np.matrix(inputmatrix12)
##print "inputnpmatrix12", inputnpmatrix12
##
##inputnpmatrix21 = np.matrix(inputmatrix21)
##print "inputnpmatrix21", inputnpmatrix21
##
##

##inputnpmatrix = np.matrix(inputmatrix)
##print "inputnpmatrix", inputnpmatrix


##globalinputmatrix =  inputmatrix +  inputmatrix12 + inputmatrix21
##globaldrugs = druglist + druglistdiff12 + druglistdiff21
##globalinputnpmatrix = np.matrix(globalinputmatrix)
##print "globalinputnpmatrix", globalinputnpmatrix
##
##
##
##printlist(globaldrugs, "globaldrugs")
##printlist(globalinputmatrix, "globalinputmatrix")



    inputmatrix = [(vector1[x],vector2[x]) for x in range(len(druglist))]
    inputnpmatrix = np.matrix(inputmatrix)
    newranking = rra(inputnpmatrix, return_all=False)

    inputoutputmatrix = [(vector1[x],vector2[x], newranking[x], druglist[x]) for x in range(len(druglist))]
    # do lexicographic sorting
    lexsorting1 = sorted(inputoutputmatrix, reverse = True, key=lambda tup: tup[0]+tup[1])
    lexsorting2 = sorted(lexsorting1, key=lambda tup: tup[2])


    print "*****************"
    trialdrugs1 = uploadtrialdrugs(map1)
#    computeinvranstst2(map1, trialdrugs1, algstring1 )
    (algstra, suminvrseranka, precisionat20a, accuma, rankedlista) = computeinvranstst2bis(map1, trialdrugs1, algstring1 )
    

    print "*****************"
    trialdrugs2 = uploadtrialdrugs(map2)
#    computeinvranstst2(map2, trialdrugs2,  algstring2)
    (algstrb, suminvrserankb, precisionat20b, accumb, rankedlistb) = computeinvranstst2bis(map2, trialdrugs2,  algstring2)


    print "*****************"
    printlist( lexsorting2  , "inputoutputmatrix")
    totaltrialdrugs = list(set(trialdrugs1) |  set(trialdrugs2))
    (algstrc, suminvrserankc, precisionat20c, accumc, rankedlistc) = computeinvranstst3(lexsorting2, totaltrialdrugs,  algstring1 + '-' + algstring2)

    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print (algstra, suminvrseranka, precisionat20a, accuma)
    print (algstrb, suminvrserankb, precisionat20b, accumb)
    print (algstrc, suminvrserankc, precisionat20c, accumc)
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(rankedlista, algstring1)
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(rankedlistb, algstring2)    
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(rankedlistc,  algstring1 + '-' + algstring2)



##########################################################################################



###################################################
# mege two rankings on all drugs taking also the symmetric differences


def mergetworunsonalldrugs(alg1, gedata1, drugdb1 , alg2, gedata2, drugdb2, fdadrugsonlyflag) :   

    algindex = alg1
    gedatastring = gedata1
    drugstring =  drugdb1
    maintable = tablemap[(gedatastring,drugstring)]
    algstring1 =  maintable[algindex][0]
    map1 = oneexperimentnewmap(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag)

    algindex = alg2
    gedatastring = gedata2
    drugstring = drugdb2
    maintable = tablemap[(gedatastring,drugstring)]
    algstring2 =  maintable[algindex][0]
    map2 = oneexperimentnewmap(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag)

    # key handling, intersection, difference
    a = set(map1.keys())
    b = set(map2.keys())
    inters = a&b
    diff1 = a-b
    diff2 = b-a
    print  len(a&b) , len(a-b), len(b-a)

    # three lists
    listinters1 = [(x, map1[x]) for x in inters]
    listinters2 = [(x, map2[x]) for x in inters]

    printlist(listinters1, "first intersection list")
    printlist(listinters2, "second intersection list")

    

    druglist = list(inters)
    vector1 = [  minuslog10(map1[x][2])  for x in druglist]
    print "vector1", vector1
    vector2 = [  minuslog10(map2[x][2])  for x in druglist]
    print "vector2", vector2

######################################################
# handling of difference lists

    min1 = min([minuslog10(map1[x][2])  for x in map1.keys()])
    min2 = min([minuslog10(map2[x][2])  for x in map2.keys()])

    print "Min1, Min2 ", min1, min2

    druglistdiff12 = list(diff1)
    druglistdiff21 = list(diff2)

    vectordiff12 = [  minuslog10(map1[x][2])  for x in druglistdiff12]
    vectordiff21 = [  minuslog10(map2[x][2])  for x in druglistdiff21]
    print "vectordiff12", vectordiff12
    print "vectordiff21", vectordiff21

    if len(vectordiff12) != 0 :
        max1 = max(vectordiff12)
    else :
        max1 = None
    if len(vectordiff21) != 0 :        
        max2 =  max(vectordiff21)
    else :
        max2 = None
        
    print "max1, max2 ", max1, max2

    # scaling down
    if max1 != None : 
        vectordiff12scaled = [ x*(min2/max1)  for x in  vectordiff12]
    else :
        vectordiff12scaled = []        
    if max2 != None :   
        vectordiff21scaled = [ x*(min1/max2)  for x in  vectordiff21]
    else :
        vectordiff21scaled = []        

    print "vectordiff12scaled", vectordiff12scaled
    print "vectordiff21scaled", vectordiff21scaled

    inputmatrix12 = [(vectordiff12[x],vectordiff12scaled[x]) for x in range(len(druglistdiff12))]
    inputmatrix21 = [(vectordiff21scaled[x], vectordiff21[x]) for x in range(len(druglistdiff21))]

    printlist(druglistdiff12, "druglistdiff12")
    printlist(inputmatrix12, "inputmatrix12")
    printlist(druglistdiff21, "druglistdiff21")
    printlist(inputmatrix21, "inputmatrix21")


    inputnpmatrix12 = np.matrix(inputmatrix12)
    print "inputnpmatrix12", inputnpmatrix12

    inputnpmatrix21 = np.matrix(inputmatrix21)
    print "inputnpmatrix21", inputnpmatrix21


    inputmatrix = [(vector1[x],vector2[x]) for x in range(len(druglist))]
    inputnpmatrix = np.matrix(inputmatrix)
    print "inputnpmatrix", inputnpmatrix


    globalinputmatrix =  inputmatrix +  inputmatrix12 + inputmatrix21
    globaldrugs = druglist + druglistdiff12 + druglistdiff21
    globalinputnpmatrix = np.matrix(globalinputmatrix)
    print "globalinputnpmatrix", globalinputnpmatrix



    printlist(globaldrugs, "globaldrugs")
    printlist(globalinputmatrix, "globalinputmatrix")

    


    #################
    # prepare input for rra


    newranking = rra(globalinputnpmatrix, return_all=False)

    inputoutputmatrix = [(globalinputmatrix[x][0],globalinputmatrix[x][1], newranking[x], globaldrugs[x]) for x in range(len(globaldrugs))]
    lexsorting1 = sorted(inputoutputmatrix, reverse = True, key=lambda tup: tup[0]+tup[1])
    lexsorting2 = sorted(lexsorting1, key=lambda tup: tup[2])


    print "*****************"
    trialdrugs1 = uploadtrialdrugs(map1)
#    computeinvranstst2(map1, trialdrugs1, algstring1 )
    (algstra, suminvrseranka, precisionat20a, accuma, rankedlista) = computeinvranstst2bis(map1, trialdrugs1, algstring1 )


    print "*****************"
    trialdrugs2 = uploadtrialdrugs(map2)
#    computeinvranstst2(map2, trialdrugs2,  algstring2)
    (algstrb, suminvrserankb, precisionat20b, accumb, rankedlistb) = computeinvranstst2bis(map2, trialdrugs2,  algstring2)


    print "*****************"

    printlist( lexsorting2  , "inputoutputmatrix")
    totaltrialdrugs = list(set(trialdrugs1) |  set(trialdrugs2))
    (algstrc, suminvrserankc, precisionat20c, accumc, rankedlistc) = computeinvranstst3(lexsorting2, totaltrialdrugs,  algstring1 + '-' + algstring2)

    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    print (algstra, suminvrseranka, precisionat20a, accuma)
    print (algstrb, suminvrserankb, precisionat20b, accumb)
    print (algstrc, suminvrserankc, precisionat20c, accumc)
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(rankedlista, algstring1)
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(rankedlistb, algstring2)    
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(rankedlistc,  algstring1 + '-' + algstring2)
    
###########################################################################
# addition to test the k-merging with k=2

##    print "????????????????????????????????????????????????"
##    print " Testing the new k-merging procedure"
##    from testingrra import multimergeranking
##
##    testvector1 = dict([  (x, minuslog10(map1[x][2]))  for x in map1.keys()])
##    print "testvector1", testvector1
##    testvector2 = dict([  (x, minuslog10(map2[x][2]))  for x in map2.keys()])
##    print "testvector2", testvector2
##
##    (totallist, mergedvector, outmatrix2) = multimergeranking((testvector1,testvector2))
##
##    inputoutputmatrix2 = [(outmatrix2[x][0],outmatrix2[x][1], mergedvector[x], totallist[x]) for x in range(len(totallist))]
##    lexsorting12 = sorted(inputoutputmatrix2, reverse = True, key=lambda tup: tup[0]+tup[1])
##    lexsorting22 = sorted(lexsorting12, key=lambda tup: tup[2])
##    printlist( lexsorting22  , "inputoutputmatrix")


# uses the kmeging procedure

from testingrra import multimergeranking

def mergemanyrunsonalldrugs(confs, fdadrugsonlyflag):

    
    listoflists = []
    settrialdrugs = set()
    lablestr = ''
    for conf in confs :
        algindex = conf[2]
        gedatastring = conf[0]
        drugstring =  conf[1]
        maintable = tablemap[(gedatastring,drugstring)]
        algstring1 =  maintable[algindex][0]
        map1 = oneexperimentnewmap(algindex, gedatastring, drugstring, maintable, fdadrugsonlyflag)
        testvectormap1 = dict([  (x, minuslog10(map1[x][2]))  for x in map1.keys()])
        print "testvector1", conf, testvectormap1
        listoflists.append(testvectormap1)
        trialdrugs1 = uploadtrialdrugs(map1)
        settrialdrugs.update(set(trialdrugs1))
        lablestr = lablestr + str(conf)

    totaltrialdrugs = list(settrialdrugs)
    nconfs=len(listoflists)
    (totallist, mergedvector, outmatrix2) = multimergeranking(listoflists)

##    inputoutputmatrix2 = [(outmatrix2[x][0],outmatrix2[x][1], mergedvector[x], totallist[x]) for x in range(len(totallist))]
##    lexsorting12 = sorted(inputoutputmatrix2, reverse = True, key=lambda tup: tup[0]+tup[1])
##    lexsorting22 = sorted(lexsorting12, key=lambda tup: tup[2])
##    printlist( lexsorting22  , "inputoutputmatrix")

    inputoutputmatrix2 = [outmatrix2[x] + [mergedvector[x], totallist[x]] for x in range(len(totallist))]
    lexsorting12 = sorted(inputoutputmatrix2, reverse = True, key=lambda tup: sum(tup[:nconfs]) )
    lexsorting22 = sorted(lexsorting12, key=lambda tup: tup[nconfs])
    printlist( lexsorting22  , "inputoutputmatrix")

    (algstrc, suminvrserankc, precisionat20c, accumc, rankedlistc) = computeinvranstst3(lexsorting22, totaltrialdrugs,  lablestr )

    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#    print (algstra, suminvrseranka, precisionat20a, accuma)
#    print (algstrb, suminvrserankb, precisionat20b, accumb)
    print (algstrc, suminvrserankc, precisionat20c, accumc)
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#    printlist(rankedlista, algstring1)
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
#    printlist(rankedlistb, algstring2)    
    print "++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    printlist(rankedlistc,  lablestr )
        

##########################################################
#
# command line support
#

## Converts booleans

def convertbooleanflag(inflag, default) :
    
    outflag = default
    if inflag  in ["true", "True"] :
        outflag = True
    elif inflag in ["false", "False"] :
        outflag = False
    else :
        print "Wrong boolean flag ", inflag, "uding default ", default
    return outflag


import argparse

def mainfunction2():
    parser = argparse.ArgumentParser(description='Code for running ranking measueremtns on covid19 enriched drugs')
    ##parser.add_argument('integers', metavar='N', type=int, nargs='+',
    ##                    help='an integer for the accumulator')
    ##parser.add_argument('--sum', dest='accumulate', action='store_const',
    ##                    const=sum, default=max,
    ##                    help='sum the integers (default: find the max)')


    parser.add_argument('mode',
                        action='store',
                        choices=["single", "merge2int", "merge2all", "mergekall"],
                        help='Defines the modality , single run, mergeof two runs, via intersection of drugs, or an all drugs.')


    parser.add_argument('algindex',
                        action='store',
                        type=int,
                        choices=range(7),
                        help='Algoritm index 0=c&pd5j8, 1=c&pd7j8, 2=clex3380  , 3=clex1890,  4=MD, 5=KPM, 6=Degas')

                        
    parser.add_argument('gedataset',
                        action='store',
                        choices=["balf", "pbmc", "cells"],
                        help='Defines the gene expression data set')

    parser.add_argument('drugset',
                        action='store',
                        choices=["GEO", "DM"],
                        help='Defines the drug data set')

    parser.add_argument('--algindex2',
                        action='store',
                        type=int,
                        choices=range(7),
                        default = None,
                        help='Algoritm index 0=c&pd5j8, 1=c&pd7j8, 2=clex3380  , 3=clex1890,  4=MD, 5=Degas, 6=KPM')

                        
    parser.add_argument('--gedataset2',
                        action='store',
                        choices=["balf", "pbmc", "cells"],
                        default = None,
                        help='Defines the gene expression data set')

    parser.add_argument('--drugset2',
                        action='store',
                        choices=["GEO", "DM"],
                        default = None,
                        help='Defines the drug data set')


  
    parser.add_argument('--triallist',
                        action='store',
                        choices=["old", "new"],
                        default = "new",
                        help='Defines the list of drugs on trial old list or new list')


    parser.add_argument('--fdadrugsonly',
                        action='store',
                        choices = ["true", "True", "false", "False"],
                        default = "false",
                        help = "Default is false. Filter substance names to inlude only fda approved druga")

  

    args = parser.parse_args()

# print out arguments

    print("mode ", args.mode)
    print("algindex ", args.algindex)
    print('gedataset', args.gedataset)
    print('drugset', args.drugset)
    print("algindex2 ", args.algindex2)
    print('gedataset2 ', args.gedataset2)
    print('drugset2 ', args.drugset2)   
    print('triallist', args.triallist)
    print('fdadrugsonly', args.fdadrugsonly)

    ## Converts booleans

    fdadrugsonlyflag = convertbooleanflag(args.fdadrugsonly, False)

    

    if args.mode == "single" and args.triallist == 'new' :
         if (args.gedataset,args.drugset, args.algindex) in [('cells','GEO',6), ('cells','DM',6 ) ] :
             print "Forbidden configuration , data not availeble ", (args.gedataset,args.drugset, args.algindex)
             assert False
         maintable = tablemap[(args.gedataset,args.drugset)]
         oneexperimentnew(args.algindex, args.gedataset, args.drugset, maintable, fdadrugsonlyflag)
        
    elif args.mode == "merge2int" and args.triallist == 'new' :
        if  args.algindex2== None or  args.gedataset2 == None or args.drugset2== None :
            print "Missing input parameters : ", args.algindex2, args.gedataset2, args.drugset2
            assert False
        elif (args.gedataset,args.drugset, args.algindex) in [('cells','GEO',6), ('cells','DM',6 ) ] :
             print "Forbidden configuration , data not availeble ", (args.gedataset,args.drugset, args.algindex)
             assert False
        elif (args.gedataset2,args.drugset2, args.algindex2) in [('cells','GEO',6), ('cells','DM',6 ) ] :
             print "Forbidden configuration , data not availeble ", (args.gedataset2,args.drugset2, args.algindex2)
             assert False
        else :
            mergetworunsonintrsctiondrugs(args.algindex, args.gedataset, args.drugset , args.algindex2, args.gedataset2, args.drugset2, fdadrugsonlyflag)
        
    
    elif args.mode == "merge2all" and args.triallist == 'new' :
        if  args.algindex2== None or  args.gedataset2 == None or args.drugset2== None :
            print "Missing input parameters : ", args.algindex2, args.gedataset2, args.drugset2
            assert False
        elif (args.gedataset,args.drugset, args.algindex) in [('cells','GEO',6), ('cells','DM',6 ) ] :
             print "Forbidden configuration , data not availeble ", (args.gedataset,args.drugset, args.algindex)
             assert False
        elif (args.gedataset2,args.drugset2, args.algindex2) in [('cells','GEO',6), ('cells','DM',6 ) ] :
             print "Forbidden configuration , data not availeble ", (args.gedataset2,args.drugset2, args.algindex2)
             assert False            
        else :
            mergetworunsonalldrugs(args.algindex, args.gedataset, args.drugset , args.algindex2, args.gedataset2, args.drugset2, fdadrugsonlyflag)

    else :
        print "Combination of prameters not allowed"

        

# old code
##    maintable = tablemap[(args.gedataset,args.drugset)]
##    if args.triallist == 'old' :   
##        oneexperiment(args.algindex, args.gedataset, args.drugset, maintable)
##    else :
##        oneexperimentnew(args.algindex, args.gedataset, args.drugset, maintable)
        

###############################################
# main

if __name__ == "__main__":
    mainfunction2()
