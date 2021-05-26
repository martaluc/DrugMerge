# -*- coding: utf-8 -*-
# a db of literature on covid19 and drugs 

trials = {}
strongliterature = {}
weakliterature = {}
nodatafound = {}

## template
##trials[] = (flag0/1, listids, notes)
##strongliterature[] = (flag0/1, listids, notes
##weakliterature[] = (flag0/1, listids, notes
##nodatafound[] = (flag0/1,  notesof search strings)

# balf geo merge2all
# c&pd5j8

#imatinib
trials['imatinib'] = (1, ['NCT04394416'], "Imatinib demonstrates in vitro activity against SARS-CoV viruses. Imatinib inhibit SARS-CoV and MERS-CoV with micromolar EC50s (range, 9.8 to 17.6 μM) with low toxicity.")


#tamoxifen
trials['tamoxifen'] = (1, ['NCT04389580'], "The principal investigator reported according to previous research data that combination therapy with Isotretinoin and tamoxifen expected to provide Complete Protection against Severe Acute Respiratory Syndrome Coronavirus.") 


#trovafloxacin
#trials['trovafloxacin'] = (0, [], "")
strongliterature['trovafloxacin'] = (1, ['https://doi.org/10.26434/chemrxiv.12101457.v1'], "Supercomputer-aided Drug Repositioning at Scale: Virtual Screening for SARS-CoV-2 Protease Inhibitor preprint")
    
#hydrocortisone
trials['hydrocortisone'] = (1, ['NCT04348305'], "We aim to assess the effects of low-dose intravenous hydrocortisone on the number of days alive without life-support in adult patients with COVID-19 and severe hypoxia")

#letrozole
#trials['letrozole'] = (0, [], "")
#strongliterature['letrozole'] = (0, [], "")
nodatafound['letrozole'] = 'googled : covid19  letrozole'

#estradiol
trials['estradiol']= (1, ['NCT04359329'], "The purpose of this study is to find out if estrogen, a female sex hormone, given as a patch placed on skin of COVID19 positive or presumptive positive patients for 7 days can reduce the severity of COVID19 symptoms compared to regular care.")

#celecoxib
#trials['celecoxib']= (0, [], "")
strongliterature['celecoxib']= (1, ['https://www.medrxiv.org/content/10.1101/2020.05.05.20077610v1'], "Celebrex adjuvant therapy on COVID-19: An experimental study")

#amoxicillin
trials['amoxicillin'] = (1, ['NCT0436306'], "Azithromycin+Amoxicillin/Clavulanate vs Amoxicillin/Clavulanate in COVID19 Patients With Pneumonia in Non-intensive Unit (AziA)")

#dexamethasone
trials['dexamethasone'] = (1, ['NCT0432506'], "Efficacy of Dexamethasone Treatment for Patients With ARDS Caused by COVID-19 (DEXA-COVID19)")

#ursodeoxycholic_acid
#trials['ursodeoxycholic_acid']= (0, [], "")
strongliterature['ursodeoxycholic_acid']=(1,['10.1016/j.mehy.2020.109897'],  'Ursodeoxycholic acid as a candidate therapeutic to alleviate and/or prevent COVID-19-associated cytokine storm')

#prednisolone
trials['prednisolone']=(1, ['NCT04485429'], "Methylprednisolone, Methylprednisolone Acetate. Efficacy Assessment of Methylprednisolone and Heparin in Patients With COVID-19 Pneumonia.")

#valproic_acid
#trials['valproic_acid']= (0, [], "")
strongliterature['valproic_acid'] = (1,['10.1016/j.mehy.2020.109891'], "Immunopharmacological management of COVID-19: Potential therapeutic role of valproic acid")

#mycophenolate_mofetil
weakliterature['mycophenolate_mofetil']= (1,['www.preprints.org/preprints202004.0380.v1.pdf'],"Preprint : Mycophenolate mofetil is active against SARS-CoV-2 in Vero E6 cells")


#isotretinoin
trials['isotretinoin'] = (1, ['NCT04361422'], "Isotretinoin in Treatment of COVID-19 (Randomized)")


#bleomycin
#trials['bleomycin'] = (0, [], "")
nodatafound['bleomycin'] = "Induces lung damage in mouse models. DOI:https://doi.org/10.1016/S2213-2600(20)30225-3"

#rosiglitazone
#trials['rosiglitazone']= (0, [], "")
strongliterature['rosiglitazone']= (1, ['10.1016/j.mehy.2020.109776'], "Can pioglitazone be potentially useful therapeutically in treating patients with COVID-19?")

#methotrexate
trials['methotrexate']=(1,['NCT04352465'], "Efficacy and Safety of MTX-loaded Nanoparticles to Treat Severe COVID-19 Patients")

#tocilizumab
trials['tocilizumab']= (1, ['NCT04317092'], "Tocilizumab in COVID-19 Pneumonia ")

#cisplatin
#trials['cisplatin'] = (0, [], "")
nodatafound['cisplatin'] = "googled : cisplatin covid19"

#tretinoin
trials['tretinoin'] = (1, ['NCT04353180'], "Assessment the Activity Value of Isotretinoin (13- Cis-Retinoic Acid ) in the Treatment of COVID-19")

# c&pd7j8
#
#baclofen
nodatafound['baclofen'] = "googled : baclofen covid19"

#dexamethasone
trials['dexamethasone']= (1, ['NCT04325061'], "Efficacy of Dexamethasone Treatment for Patients With ARDS Caused by COVID-19")


#doxorubicin
weakliterature['doxorubicin'] =(1, ['https://doi.org/10.1101/2020.04.07.029488'],"Vulnerabilities of the SARS-CoV-2 virus to proteotoxicity – opportunity for repurposed chemotherapy of COVID-19 infection" )

#vitamin_c
trials['vitamin_c']= (1, ['NCT04264533'], "Vitamin C Infusion for the Treatment of Severe 2019-nCoV Infected Pneumonia")

#metoprolol
nodatafound['metoprolol'] = "googled :metoprolol covid19"

#diethylstilbestrol
nodatafound['diethylstilbestrol'] = "googled :diethylstilbestrol covid19"

#progesterone
trials['progesterone'] = (1, ['NCT04365127'], "Progesterone for the Treatment of COVID-19 in Hospitalized Men")


#ethinyl_estradiol
nodatafound['ethinyl_estradiol'] =  "Ethinylestradiol ia a synthetic form of estradiol"

#deferoxamine
trials['deferoxamine']= (1, ['NCT04333550'], "Application of Desferal to Treat COVID-19")

#c&pd5j8-c&pd7j8
# same as above

#clex3380

#bexarotene
strongliterature['bexarotene'] = (1, ['https://doi.org/10.1016/j.phrs.2020.104960'], "Discovery of the FDA-approved drugs bexarotene, cetilistat, diiodohydroxyquinoline, and abiraterone as potential COVID-19 treatments with a robust two-tier screening system")

#sirolimus
trials['sirolimus'] = (1, ['NCT04461340'], "Efficacy and Safety of Sirolimus in COVID-19 Infection")

#vorinostat
nodatafound['vorinostat'] = "googled :vorinostat covid19"

#decitabine trial started dring this study.
trials['decitabine']= (1, ['NCT04482621'], "Decitabine for Coronavirus (COVID-19) Pneumonia- Acute Respiratory Distress Syndrome (ARDS) Treatment")

#gemcitabine
nodatafound['gemcitabine'] = "googled :gemcitabine covid19"

#sevoflurane
trials['sevoflurane'] = (1, ['NCT04355962'], "Sevoflurane in COVID-19 ARDS (SevCov)")

#cyclophosphamide
nodatafound['cyclophosphamide'] = "googled :cyclophosphamide covid19"

#paclitaxel
nodatafound['paclitaxel'] = "googled :paclitaxel covid19"

#nicotine
weakliterature['nicotine'] = (1, ['https://doi.org/10.1093/ntr/ntaa077'], "Beyond Smoking Cessation: Investigating Medicinal Nicotine to Prevent and Treat COVID-19")


#hydroquinone
nodatafound['hydroquinone'] = "It has cosmetic use for skin pigmentation. Potentially cancegobenous. https://en.wikipedia.org/wiki/Hydroquinone."


#clex1890

#deferasirox
nodatafound['deferasirox'] = "googled : deferasirox covid19"

#vincristine
nodatafound['vincristine'] = "googled : vincristinex covid19"


#cyclosporine, 'cyclosporin_a'
trials['cyclosporine'] = (1, ['NCT04412785'], "Cyclosporine in Patients With Moderate COVID-19")
trials['cyclosporin_a'] = (1, ['NCT04412785'], "Cyclosporine in Patients With Moderate COVID-19")


#testostrone
nodatafound['testosterone'] = "testostrone is mostly considered as a susceptibilityy factor for male patients."


#MD

# vitamin_e
weakliterature['vitamin_e'] = (1, ['https://doi.org/10.1016/j.ijcard.2020.04.009'], "Wang J‐Z, Zhang R‐Y, Bai J. An antioxidative therapy for ameliorating cardiac injuries of critically ill COVID‐19‐infected patients.")

# captopril
trials['captopril'] = (1, ['NCT04355429'], "Efficacy of Captopril in Covid-19 Patients With Severe Acute Respiratory Syndrome (SARS) CoV-2 Pneumonia ")


# lubiprostone
nodatafound['lubiprostone'] = "googled : lubiprostone covid19"

# ranolazine
nodatafound['ranolazine'] = "googled : ranolazine covid19"

#KPM

# trastuzumab
nodatafound['trastuzumab'] = "Used for oncological parients with co-morbidity of covid19"

# Degas

#dactinomycin
strongliterature['dactinomycin'] = (1, [' https://doi.org/10.1038/s41421-020-0153-3'], "Zhou, Y., Hou, Y., Shen, J. et al. Network-based drug repurposing for novel coronavirus 2019-nCoV/SARS-CoV-2. Cell Discov 6, 14 (2020")

# fluoxetine
trials['fluoxetine'] = (1, ['NCT04377308'], "Fluoxetine to Reduce Intubation and Death After COVID19 Infection")

########################################################
# pbmc geo merge2all
#  c&pd5j8

#alitretinoin
nodatafound['alitretinoin'] = "googled : covid19 alitretinoin"

#Paracetamol, also known as acetaminophen


trials['paracetamol'] = (1, ['NCT04416334'], "(Used for symptoms) - PREEMPTIVE THERAPY WITH COLCHICINE IN PATIENTS OLDER THAN 70 YEARS WITH HIGH RISK OF SEVERE PNEUMONIAE DUE TO CORONAVIRUS")
trials['acetaminophen'] = (1, ['NCT04416334'], "(Used for symptoms) - PREEMPTIVE THERAPY WITH COLCHICINE IN PATIENTS OLDER THAN 70 YEARS WITH HIGH RISK OF SEVERE PNEUMONIAE DUE TO CORONAVIRUS")

#fulvestrant
nodatafound['fulvestrant'] = "googled : fulvestrant covid19"

#clex420

#pioglitazone
trials['pioglitazone'] = (1, ['NCT04473274'], "GlitazOne Treatment for Coronavirus HypoxiA, a Safety and Tolerability Open Label With Matching Cohort Pilot Study")

#etoposide
trials['etoposide'] = (1, ['NCT04356690'], "Etoposide in Patients With COVID-19 Infection")


#MD

#fluorouracil
strongliterature['fluorouracil'] = (1, ['10.1016/j.mehy.2020.109754'], "5-Fluorouracil in combination with deoxyribonucleosides and deoxyribose as possible therapeutic options for the Coronavirus, COVID-19 infection")

#sorafenib
nodatafound['sorafenib'] = "googled : sorafenib covid19"

# Degas

# ribavirin
trials['ribavirin'] = (1, ['NCT04494399'], "IFN Beta-1b and Ribavirin for Covid-19")

# irinotecan 
nodatafound['irinotecan'] = "googled : irinotecan covid19"


#cells
# c&pd5j8
#cetuximab 
nodatafound['cetuximab'] = "googled : cetuximab covid19"

#rituximab
nodatafound['rituximab'] = "googled : rituximab covid19"

#clustex

# methylprednisolone
trials['methylprednisolone'] = (1, ['NCT04485429'], "Efficacy Assessment of Methylprednisolone and Heparin in Patients With COVID-19 Pneumonia")


# KPM

# dipyridamole

trials['dipyridamole'] = (1, ['NCT04424901'], "Trial of Open Label Dipyridamole- In Hospitalized Patients With COVID-19 ") 

# mifepristone
nodatafound['mifepristone'] = "googled : mifepristone covid19"


# MD data
# balf
# c&pd5j8

#daunorubicin
nodatafound['daunorubicin'] = "googled : daunorubicin covid19"

# thioguanine
weakliterature['thioguanine'] = (1, ['https://doi.org/10.1101/2020.07.01.183020'], "6-Thioguanine blocks SARS-CoV-2 replication by inhibition of PLpro protease activities")

# dobutamine
nodatafound['dobutamine'] = "googled : dobutamine covid19"

# acyclovir
nodatafound['acyclovir'] = "googled : acyclovir covid19"

# lipopolysaccharide
nodatafound['lipopolysaccharide'] = "googled : lipopolysaccharider covid19"

                                     
# diethylstilbestrol
nodatafound['diethylstilbestrol'] = "googled : diethylstilbestrol covid19"
                                     
# ifosfamide
nodatafound['ifosfamide'] = "googled : ifosfamide covid19"

# etodolac 
nodatafound['etodolac'] = "googled : etodolac covid19"
                                    
# ibuprofen
trials['ibuprofen'] = (1, ['NCT04382768'],  "Inhaled Ibuprofen to Treat COVID-19")                                
                                    
# cytarabine
nodatafound['cytarabine'] = "googled : cytarabine covid19"
 
#  isoprenaline
nodatafound['isoprenaline'] = "googled : isoprenaline covid19"

# sulindac
nodatafound['sulindac'] = "googled : sulindac covid19"

# chlorambucil 
nodatafound['chlorambucil'] = "googled : chlorambucil covid19"


# ketorolac
nodatafound['ketorolac'] = "googled : ketorolac covid19"

#indomethacin
trials['indomethacin'] = (1, ['NCT04344457'], "Evaluate the Efficacy and Safety of Oral Hydroxychloroquine, Indomethacin and Zithromax in Subjects With Mild Symptoms of COVID-19")


# famciclovir 
nodatafound['famciclovir'] = "googled : famciclovir covid19"

# hydroxyurea
nodatafound['hydroxyurea'] = "googled : hydroxyurea covid19"

#  carmustine
nodatafound['carmustine'] = "googled : carmustine covid19"



######################################################################
#
# external interface

allannotkeys = list(set(trials.keys()) | set(strongliterature.keys()) | set(weakliterature.keys()) | set(nodatafound.keys()))
print " Number of  Annotated Drugs for covid19", len(allannotkeys)

def getannotation_covid19(key) :

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

# Utilities
# Updates an array of numerical values for teh first positions. 
        
def updatecounters(accum, new):
    if new != None :
        for i in range(len(accum)):
            accum[i] += new[i]
        return accum
    else :
        return accum



