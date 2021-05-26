# -*- coding: utf-8 -*-
# a db of literature on asthma and drugs 

trials = {}
strongliterature = {}
weakliterature = {}
nodatafound = {}

# core and peel GEO

##0 prednisolone

trials['prednisolone']= (1, [''], "https://www.webmd.com/asthma/guide/prednisone-asthma")


##1 hydrocortisone
strongliterature['hydrocortisone']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC463917/'], "Corticosteroids in acute severe asthma: effectiveness of low doses.")

##2 valproic_acid
trials['valproic_acid']= (1, ['NCT00153270'], "Study of Efficacy of Sodium Valproate in Therapy of Bronchial Asthma")

##3 sirolimus
nodatafound['sirolimus'] = "googled : sirolimus  asthma"

##4 imatinib
strongliterature['imatinib']= (1, ['DOI: 10.1056/NEJMoa1613125'], "KIT Inhibition by Imatinib in Patients with Severe Refractory Asthma")

##5 bleomycin


##6 dexamethasone
##7 mycophenolate_mofetil
##8 rosiglitazone
##9 celecoxib
##10 decitabine
##11 doxorubicin
##12 cyclophosphamide
##13 pioglitazone
##14 letrozole
##15 tretinoin
##16 fluoxetine
##17 folic_acid
##18 isotretinoin
##19 calcitriol

#nodatafound[''] = " "
#strongliterature['']= (1, [''], "")
#weakliterature['']= (1, [''], "")
#trials['']= (1, [''], "")



######################################################################
#
# external interface

allannotkeys = list(set(trials.keys()) | set(strongliterature.keys()) | set(weakliterature.keys()) | set(nodatafound.keys()))
print " Number of  Annotated Drugs for ashtma", len(allannotkeys)

def getannotation_asth(key) :

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
