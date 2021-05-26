#!/usr/bin/env python2.7
#testing passage of list data via command line

import argparse
from   newdataanalysis4merge import  mergemanyrunsonalldrugs
from   codefilterdrugs import filterdrugs
from generic_util import printmap, printlist

###########################################################
# importing the main metatadata mapping from a sparate file
from metadata_file import tablemap



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


def mainfunction2():
    parser = argparse.ArgumentParser(description='Code for running multiple ranking measueremtns on covid19 enriched drugs')


    parser.add_argument('-conf',
                        dest='conf',
                        action='append',
#                        choices=["GEO", "DM"],
                        help='Defines the configuration in th format (dataset,drugdb,algindex)'
                        )


    parser.add_argument('-filter',
                        dest='filter',
                        action='append',
                        default = None,
#                        choices=["GEO", "DM"],
                        help='Defines the druglists obtained in the format (dataset,algname,drugdb,filter/nofilter)'
                        )



##    parser.add_argument('-drugs',
##                        dest='drugs',
##                        action='append',
##                        choices=["GEO", "DM"],
##                        help='Defines the drug data set'
##                        )
##
##    parser.add_argument('-data',
##                        dest='data',
##                        action='append',
##                        choices=["balf", "pbmc", "cells"],
##                        help='Defines the gene expression data set'
##                        )
##    
##       
##    parser.add_argument('algindex',
##                        nargs='+',
##                        type=int,
##                        choices=range(7),
##                        help='Algoritm index 0=c&pd5j8, 1=c&pd7j8, 2=clex3380  , 3=clex1890,  4=MD, 5=KPM, 6=Degas')

    parser.add_argument('--fdadrugsonly',
                        action='store',
                        choices = ["true", "True", "false", "False"],
                        default = "false",
                        help = "Default is false. Filter substance names to inlude only fda approved druga")

    parser.add_argument('--mode',
                        action='store',
                        choices = ["nofilter", "filteronly", "mergeonly", "filter_merge"],
                        default = "nofilter",
                        help = "Default is nofilter. Chang option to use the filter data form directionality analysis")





    args = parser.parse_args()

##    print "data type", args.data
##    print "drug type", args.drugs
##    print "list of algs ", args.algindex
    print ("Confs", args.conf)
    print ("Filters", args.filter)
    print('fdadrugsonly', args.fdadrugsonly)
    print('mode', args.mode)

    fdadrugsonlyflag = convertbooleanflag(args.fdadrugsonly, False)

    if args.filter  == None:
        print "Empty filter list"
        filters = []
    else :
        filters = []
        for x in args.filter :
            xx = x.strip('()')
            print x, xx
            xxx = xx.split(',')
            print xxx
            filters.append(xxx)        
        print  "Parsed filters ",   filters

        if filters != [] and args.mode=="nofilter" :
            print "Warnining nofilter options writh set filters ", filters
            assert False
        
     

    if args.conf  == None:
        print "Empty configuration list"
        return


    gedatanamelist =    ['balf', 'pbmc', 'cells', 'asth', 'arth', 'crc', 'prc', 'taguchi']
    drugdatanamelist = ['GEO', 'DM', 'L1000', 'L1000up', 'L1000updown', 'L1000down', 'CMAPup', 'CMAPupdown', 'CMAPdown']
    confs = []
    for x in args.conf :
        xx = x.strip('()')
        print x, xx
        xxx = xx.split(',')
        print xxx
        if xxx[0] in gedatanamelist and xxx[1] in  drugdatanamelist and int(xxx[2]) in range(7) :
            if xxx[0] == 'cells' and int(xxx[2]) == 6 :
                print "Not accepted configuration: ", xxx
            elif xxx[0] == 'taguchi' and int(xxx[2]) != 0 :
                 print "Not accepted configuration: ", xxx
            else :
                conf = (xxx[0], xxx[1], int(xxx[2]))
                algindex = conf[2]
                gedatastring = conf[0]
                drugstring =  conf[1]
                if not tablemap.has_key((gedatastring,drugstring)):
                    print "Not existing configuration, gedata, drugs: ",conf
                else :
                    if len(tablemap[(gedatastring,drugstring)]) >= algindex+1 :
                        confs.append((xxx[0], xxx[1], int(xxx[2])))                      
                    else :
                        print "Not existing configuration, algorithm index : ",conf 
                        
        else :
            print "Not accepted configuration: ", xxx
            
    print "Parsed confs ",  confs


    

     
##    confs = []
##    for d in args.data :
##        for dr in args.drugs :
##            for alg in args.algindex :
##                newconf = (d, dr, alg)
##                if newconf in [('cells','GEO',6), ('cells','DM',6 ) ] :
##                     print "Forbidden configuration, data not available ", newconf
##                else :
##                    confs.append(newconf)
##
    if confs==[] :
        print "Empty configuration list"
        return

    drugfilterlist = filterdrugs(filters)
    if drugfilterlist != [] :
        printlist(drugfilterlist[0], "List of drugs obtained from filters")
    else :
        print "No filters"

    # not passed yet as list. 

    mergemanyrunsonalldrugs(confs, fdadrugsonlyflag, drugfilterlist, args.mode)   
    
   


###############################################
# main

if __name__ == "__main__":
    mainfunction2()
