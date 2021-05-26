# -*- coding: utf-8 -*-
# a db of literature on Rheumatoid arthritis and drugs 

trials = {}
strongliterature = {}
weakliterature = {}
nodatafound = {}




######################################################################
#
# external interface

allannotkeys = list(set(trials.keys()) | set(strongliterature.keys()) | set(weakliterature.keys()) | set(nodatafound.keys()))
print " Number of  Annotated Drugs for athritis", len(allannotkeys)

def getannotation_arth(key) :

    if key not in  allannotkeys :
        print "No annotation for ", key
        return None
    elif key in trials.keys():        
        return (1, 0, 0, 0, trials[key])
    elif key in strongliterature.keys():        
        return (0, 1, 0, 0, strongliterature[key])
    elif key in weakliterature.keys():        
        return (0, 0, 1, 0, weakliterature[key])
    elif key in nodatafound.keys():        
        return (0, 0, 0, 1, nodatafound[key])
    else :
        print "No annotation for ", key
        return None
