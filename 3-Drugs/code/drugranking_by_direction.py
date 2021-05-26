#!/usr/bin/env python2.7

# This file holds the main command to run the ranking on
# drugaction directionality data.
# started 2020-11-14
# 2020-11-24 incorpodate code for phase III detection of drug combinations

import argparse
from testing_directionality_data import drug_modulation_single_runs

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
                        help='Defines the configuration in the format (dataset, algname, drugdb, filter/nofilter)'
                        )

    parser.add_argument('--fdadrugsonly',
                        action='store',
                        choices = ["true", "True", "false", "False"],
                        default = "false",
                        help = "Default is false. Filter substance names to inlude only fda approved druga")

    parser.add_argument('--positiveonly',
                        action='store',
                        choices = ["true", "True", "false", "False"],
                        default = "false",
                        help = "Default is false. set to true of have only drugs with postive correlation in output")


    parser.add_argument('--reuseruns',
                        action='store',
                        choices = ["true", "True", "false", "False"],
                        default = "false",
                        help = "Default is false. Set to true of reuse output of single runs stored")

    parser.add_argument('--combinations',
                        action='store',
                        choices = ["true", "True", "false", "False"],
                        default = "false",
                        help = "Default is false. Set to true to compute drug combinations covering modules")

    parser.add_argument('--weights',
                        action='store',
                        choices = ["size_x_deltadeg", "deltadeg"],
                        default = "size_x_deltadeg",
                        help = "Default is size_x_deltadeg. Set to switch to deltadeg")


    args = parser.parse_args()

    print "Confs", args.conf
    print('FDA drugs only: ', args.fdadrugsonly)
    print ('Positive drugs only: ', args.positiveonly)
    print ('Reuse previous runs', args.reuseruns)
    print ('Compute combinations', args.combinations)
    print ('Weighting function ', args.weights)

    fdadrugsonlyflag = convertbooleanflag(args.fdadrugsonly, False)
    positiveonly= convertbooleanflag(args.positiveonly, False)
    reuseruns= convertbooleanflag(args.reuseruns, False)
    combinations=convertbooleanflag(args.combinations, False)

    if args.conf  == None:
        print "Empty configuration list"
        return

    confs = []
    for x in args.conf :
        xx = x.strip('()')
#        print x, xx
        xxx = xx.split(',')
#        print xxx
        if not xxx[0] in ('pbmc', 'balf', 'cells', 'asth', 'arth', 'crc', 'prc') :
            print "not supported data set ", xxx[0]
            assert False

        if not xxx[1] in ('MD', 'cpd05j08', 'cpd07j08', 'cpd07j08', 'cpd07j06', 'cpd05j08') :
            print "not supported algorithm ", xxx[1]
            assert False

            
        if not xxx[2] in ('GEO', 'DM', 'DM2', 'CMAP', 'L1000') :
            print "not supported drug database ", xxx[2]
            assert False

        if not xxx[3] in ('filter', 'nofilter') :
            print "not supported option: filter/nofilter ", xxx[3]
            assert False
        
            
        confs.append((xxx[0], xxx[1], xxx[2], xxx[3]))


    if confs==[] :
        print "Empty configuration list"
        return
    else:
        print confs

# multiple confs are run individually, no 
    drug_modulation_single_runs(confs, fdadrugsonlyflag, positiveonly, reuseruns, combinations, args.weights)   
    
   


###############################################
# main

if __name__ == "__main__":
    mainfunction2()

