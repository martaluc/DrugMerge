# -*- coding: utf-8 -*-
# a db of literature on colorectal cancer and drugs 

trials = {}
strongliterature = {}
weakliterature = {}
nodatafound = {}

#c&pd7j8 DM
##0 fluconazole
nodatafound['fluconazole'] = "googled : fluconazole colorectal cancer"

##1 miconazole
strongliterature['miconazole']= (1, ['https://pubmed.ncbi.nlm.nih.gov/11922774/'], "Antitumor effects of miconazole on human colon carcinoma xenografts in nude mice through induction of apoptosis and G0/G1 cell cycle arrest")

##2 carbamazepine
strongliterature['carbamazepine']= (1, ['https://doi.org/10.5812/ircmj.37230'], "Akbarzadeh, L., Moini Zanjani, T., & Sabetkasaei, M. (2016). Comparison of Anticancer Effects of Carbamazepine and Valproic Acid. Iranian Red Crescent medical journal, 18(10), e37230.")

##3 lansoprazole
weakliterature['lansoprazole'] =(1, ['DOI: 10.3892/ijo.2011.1214'],"INTERNATIONAL JOURNAL OF ONCOLOGY 40: 170-175, 2012" )


##4 granisetron
nodatafound['granisetron'] = "used for contrasting nausea and vomiting in crc. https://dx.doi.org/10.7150%2Fjca.17102"



##5 finasteride
nodatafound['finasteride'] = "googled : finasteride colon cancer. Found effects on prostate cancer"


##6 anastrozole
nodatafound['anastrozole'] = "googled : anastrozole colon cancer. Found effects on breast cancer patients.     DOI: 10.1093/annonc/mdx822"



##7 promethazine
strongliterature['promethazine']= (1, ['https://patents.google.com/patent/WO2017000084A1/en'], "The present invention provides the use of Promethazine for the preparation of a product  for inhibiting proliferation of liver cancer and/or colon cancer and/or lung cancer cells.")



##8 itraconazole
strongliterature['itraconazole']= (1, [' https://doi.org/10.1038/s41419-020-02742-0'], " Itraconazole inhibits the Hedgehog signaling pathway thereby inducing autophagy-mediated apoptosis of colon cancer cells. Cell Death Dis 11, 539 (2020)")


                                   
##9 clotrimazole
strongliterature['clotrimazole']= (1, ['https://pubmed.ncbi.nlm.nih.gov/12452064/'], "Clotrimazole induced apoptosis in human colon cancer cell line CCL229")


##10 penicillamine
weakliterature['penicillamine'] =(1, ['https://pubmed.ncbi.nlm.nih.gov/28551160/'],"Treatment with copper chelators (ammonium tetrathiomolybdate, bathocuproinedisulfonic acid and D-penicillamine) increased expression of hCTR1 protein in DLD-1 and SW620 cells, and potentiated the cytotoxicity of oxaliplatin in DLD-1 but not SW620 cells." )


##11 fenofibrate
weakliterature['fenofibrate'] =(1, ['https://www.nature.com/articles/s41598-019-42838-y'],"Majeed, Y., Upadhyay, R., Alhousseiny, S. et al. Potent and PPARα-independent anti-proliferative action of the hypolipidemic drug fenofibrate in VEGF-dependent angiosarcomas in vitro. Sci Rep 9, 6316 (2019). A-210 was robustly induced by fenofibrate in our study and has been shown to also reduce proliferation and induce G2/M arrest in colorectal cancer cells57 and its overexpression was associated with improved prognosis" )


##12 terbinafine
strongliterature['terbinafine']= (1, ['doi: 10.1002/ijc.11194. PMID: 12794767.'], "In vitro and in vivo studies of the anticancer action of terbinafine in human cancer cell lines: G0/G1 p53-associated cell cycle arrest. Int J Cancer. 2003 Aug 10;106(1):125-37. ")



##13 omeprazole
strongliterature['omeprazole']= (1, ['https://gut.bmj.com/content/34/11/1559.abstract'], "Gut 1993; 34: 1559-1565. Omeprazole inhibits colorectal carcinogenesis induced by azoxymethane in rats")



##14 carvedilol
strongliterature['carvedilol']= (1, ['https://pubmed.ncbi.nlm.nih.gov/25705003/'], "Carvedilol use is associated with reduced cancer risk: A nationwide population-based cohort study. Int J Cardiol. 2015 Apr 1;184:9-13. long-term treatment with carvedilol is associated with reduced upper gastrointestinal tract and lung cancer risk")


##15 valproic_acid
strongliterature['valproic_acid']= (1, ['https://doi.org/10.1186/s13046-017-0647-5'], "erranova-Barberio, M., Pecori, B., Roca, M.S. et al. Synergistic antitumor interaction between valproic acid, capecitabine and radiotherapy in colorectal cancer: critical role of p53. J Exp Clin Cancer Res 36, 177 (2017). ")



##16 lovastatin
strongliterature['lovastatin']= (1, ['https://doi.org/10.1016/S0016-5085(99)70342-2'], "Alimentary Tract| Volume 117, ISSUE 4, P838-847, October 01, 1999.Lovastatin augments sulindac-induced apoptosis in colon cancer cells and potentiates chemopreventive effects of sulindac")


##17 lorazepam
nodatafound['lorazepam'] = "googled : lorazepam colon cancer. Found effects to prevent nausea and vomiting caused by chemotherapy. https://www.cancer.gov/publications/dictionaries/cancer-terms/def/lorazepam"


##18 mexiletine
weakliterature['mexiletine'] =(1, ['DOI: 10.12688/f1000research.6789.1'],"Voltage-gated sodium channel as a target for metastatic risk reduction with re-purposed drugs July 2015F1000 Research 4" )


##19 quetiapine
weakliterature['quetiapine']=(1,['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7352868/'], "For all antipsychotics, including clozapine, quetiapine, and risperidone, a higher cumulative dose was associated with a lower risk of colorectal cancer.")


#clex DM
##0 dexamethasone
strongliterature['dexamethasone']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5620202/'], "(2017). Dexamethasone affects cell growth/apoptosis/chemosensitivity of colon cancer via glucocorticoid receptor α/NF-κB. Oncotarget, 8(40), 67670–67683. https://doi.org/10.18632/oncotarget.18802")


##1 mifepristone
strongliterature['mifepristone']= (1, ['https://pubmed.ncbi.nlm.nih.gov/19443374/'], "heck JH, Dix E, Sansoucie L, Check D. Mifepristone may halt progression of extensively metastatic human adenocarcinoma of the colon - case report. Anticancer Res. 2009 May;29(5):1611-3. PMID: 19443374")

##2 simvastatin
strongliterature['simvastatin']= (1, ['https://onlinelibrary.wiley.com/doi/full/10.1002/ijc.23593'], "Simvastatin induces apoptosis in human colon cancer cells and in tumor xenografts, and attenuates colitis‐associated colon cancer in mice")

##3 bromfenac
nodatafound['bromfenac'] = "google: bromfenac colon cancer"


##4 norethindrone
nodatafound['norethindrone'] = "google: norethindrone colon cancer"


##5 gentamicin
strongliterature['gentamicin']= (1, ['https://pubmed.ncbi.nlm.nih.gov/15375668/'], " Prospective, randomized trial examining the role of gentamycin-containing collagen sponge in the reduction of postoperative morbidity in rectal cancer patients: early results and surprising outcome at 3-year follow-up. Int J Colorectal Dis. 2005 Mar;20(2):114-20. doi: 10.1007/s00384-004-0632-2. Epub 2004 Sep 15. PMID: 15375668.")

##6 thioguanine
nodatafound['thioguanine'] = "Adverse effects. Cancer Treat Rep.Sep-Oct 1981;65(9-10):909-10.Phase II trial of iv 6-thioguanine in advanced colorectal carcinomaPMID: 7273027 "

##7 clofibrate
weakliterature['clofibrate']= (1, ['DOI: 10.1155/2012/269751'], "PPAR Res. 2012. AS601245, an Anti-Inflammatory JNK Inhibitor, and Clofibrate Have a Synergistic Effect in Inducing Cell Responses and in Affecting the Gene Expression Profile in CaCo-2 Colon Cancer Cells ")


##8 clarithromycin
strongliterature['clarithromycin']= (1, ['https://www.nature.com/articles/s41419-020-2349-8'], "Petroni, G., Bagni, G., Iorio, J. et al. Clarithromycin inhibits autophagy in colorectal cancer by regulating the hERG1 potassium channel interaction with PI3K. Cell Death Dis 11, 161 (2020). https://doi.org/10.1038/s41419-020-2349-8")

##9 torsemide (alias torasemide)
nodatafound['torsemide'] = "Might modulate angiogenesis"

##10 indomethacin
strongliterature['indomethacin']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4205333/'], "Wang HM, Zhang GY. Indomethacin suppresses growth of colon cancer via inhibition of angiogenesis in vivo. World J Gastroenterol. 2005 Jan 21;11(3):340-3. doi: 10.3748/wjg.v11.i3.340. PMID: 15637740; PMCID: PMC4205333.")

##11 clomipramine
nodatafound['clomipramine'] = "Might induce apoptosis in some cancer types. https://pubmed.ncbi.nlm.nih.gov/10487422/"

##12 enoxacin
strongliterature['enoxacin']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3060242/'], "Small molecule enoxacin is a cancer-specific growth inhibitor that acts by enhancing TAR RNA-binding protein 2-mediated microRNA processing")

##13 ibuprofen
strongliterature['ibuprofen']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3101013/'], "Phospho-Ibuprofen (MDC-917) Is a Novel Agent against Colon Cancer: Efficacy, Metabolism, and Pharmacokinetics in Mouse Models")

#MD

##0 pantoprazole
strongliterature['pantoprazole']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5008373/'], "Pantoprazole, an FDA-approved proton-pump inhibitor, suppresses colorectal cancer growth by targeting T-cell-originated protein kinase")

##1 rifabutin
nodatafound['rifabutin'] = "Effective for lung cncer. https://doi.org/10.1016/j.bbrc.2016.02.120"

##2 acetaminophen
strongliterature['acetaminophen']= (1, ['https://doi.org/10.1097/00008469-200202000-00006'], "Protective effect of acetaminophen against colon cancer initiation effects of 3,2′-dimethyl-4-aminobiphenyl in rats")

##3 dimenhydrinate
nodatafound['dimenhydrinate'] = "googls : dimenhydrinate colon  cancer"

##4 econazole
strongliterature['econazole']= (1, ['https://pubmed.ncbi.nlm.nih.gov/15919146/'], "Molecular mechanisms of econazole-induced toxicity on human colon cancer cells: G0/G1 cell cycle arrest and caspase 8-independent apoptotic signaling pathways")

##5 azathioprine
nodatafound['azathioprine'] = "Increases cancer risk"

#KPM

##0 nisoldipine
weakliterature['nisoldipine']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6947929/'], "High Throughput Screening for Colorectal Cancer Specific Compounds.")

##1 roflumilast
weakliterature['roflumilast']= (1, ['DOI: 10.1177/0960327120931165'], "Roflumilast counteracts DMH-induced preneoplastic colon damage in albino Wistar rats")

##2 vinorelbine
trials['vinorelbine']= (1, ['NCT03482362'], "Vinorelbine in Advanced BRAF-like Colon Cancer (EORTC1616)")

##3 pramoxine
nodatafound['pramoxine'] = "Analgesic use. googl pramoxine colon  cancer"

##4 tamoxifen
strongliterature['tamoxifen']= (1, ['https://doi.org/10.1016/S0304-3835(00)00600-5'], "Tamoxifen and gonadal steroids inhibit colon cancer growth in association with inhibition of thymidylate synthase, survivin and telomerase expression through estrogen receptor beta mediated system")

##5 mitomycin_c
strongliterature['mitomycin_c']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2361607/'], "Capecitabine and mitomycin C as third-line therapy for patients with metastatic colorectal cancer resistant to fluorouracil and irinotecan")

##6 modafinil
nodatafound['modafinil'] = "Effective for inflammatory bowel disease"


##7 atorvastatin
strongliterature['atorvastatin']= (1, ['https://doi.org/10.1002/ijc.23315'], "Combination of atorvastatin and celecoxib synergistically induces cell cycle arrest and apoptosis in colon cancer cells")


##8 ifosfamide
strongliterature['ifosfamide']= (1, ['https://doi.org/10.1016/0277-5379(90)90229-M'], "Combination therapy of ACNU and ifosfamide in tumor bearing mice with M2661 breast cancer, B16 malignant melanoma or C38 colon cancer. active on the C38 line.")

# all but core and peel

#0 diethylstilbestrol
nodatafound['diethylstilbestrol'] = "Possibly cancerogenic"


#c&pd7j8  GEO

##0 letrozole
nodatafound['letrozole'] = "Used in breast cancer.https://doi.org/10.1093/jnci/dji250"


##1 bleomycin
strongliterature['bleomycin']= (1, ['PMID: 2420264'], "Uematsu A, Ho DH, Drewinko B, Yang LY, Brown NS, Bodey GP, Krakoff IH. Peplomycin and bleomycin effects on human colon cancer cells. Anticancer Res. 1986 Jan-Feb;6(1):1-3. .")

##2 hydrocortisone
nodatafound['hydrocortisone'] = "Uses in several cancer treatments"

##3 estradiol
strongliterature['estradiol']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6391933/'], "Estradiol and progesterone regulate proliferation and apoptosis in colon cancer")


##4 imatinib
strongliterature['imatinib']= (1, ['https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5395860/'], "Imatinib treatment of poor prognosis mesenchymal-type primary colon cancer: a proof-of-concept study in the preoperative window period (ImPACCT)")

##5 mycophenolate_mofetil
weakliterature['mycophenolate_mofetil']= (1, ['https://doi.org/10.1186/1471-2407-5-4'], "Engl, T., Makarević, J., Relja, B. et al. Mycophenolate mofetil modulates adhesion receptors of the beta1 integrin family on tumor cells: impact on tumor recurrence and malignancy. BMC Cancer 5, 4 (2005). ")

##6 celecoxib
trials['celecoxib']= (1, ['NCT00005094'], "Celecoxib to Prevent Colorectal Cancer in Patients Who Have Undergone Surgery to Remove Polyps")

##7 decitabine
strongliterature['decitabine']= (1, ['https://doi.org/10.1038/s41423-018-0026-y'], "Yu, G., Wu, Y., Wang, W. et al. Low-dose decitabine enhances the effect of PD-1 blockade in colorectal cancer with microsatellite stability by re-modulating the tumor microenvironment")

##8 cyclophosphamide
strongliterature['cyclophosphamide']= (1, ['DOI: 10.1158/1078-0432.CCR-17-0895'], "Low-Dose Cyclophosphamide Induces Antitumor T-Cell Responses, which Associate with Survival in Metastatic Colorectal Cancer")

##9 sirolimus
strongliterature['sirolimus']= (1, ['PMC5546956'], "Sirolimus and Metformin Synergistically Inhibits Colon Cancer In Vitro and In Vivo")


##10 calcitriol
weakliterature['calcitriol']= (1, ['doi 10.3390/metabo8010005'], "Calcitriol Supplementation Causes Decreases in Tumorigenic Proteins and Different Proteomic and Metabolomic Signatures in Right versus Left-Sided Colon Cancer")

##11 isotretinoin
nodatafound['isotretinoin'] = "Could ahve cncerogenic action"

##12 cisplatin
strongliterature['cisplatin']= (1, ['doi: 10.1158/1535-7163.MCT-08-0398'], "FOXO3a mediates the cytotoxic effects of cisplatin in colon cancer cells")

##13 doxorubicin
strongliterature['doxorubicin']= (1, ['https://doi.org/10.1016/j.tox.2010.03.012'], "Dose- and time-dependent effects of doxorubicin on cytotoxicity, cell cycle and apoptotic cell death in human colon cancer cells")

##14 sorafenib
strongliterature['sorafenib']= (1, ['10.3748/wjg.v22.i23.5400'], "Last line therapy with sorafenib in colorectal cancer: A retrospective analysis")

##15 paclitaxel
strongliterature['paclitaxel']= (1, ['10.2147/IJN.S100744'], "Synergistic inhibition of colon cancer cell growth with nanoemulsion-loaded paclitaxel and PI3K/mTOR dual inhibitor BEZ235 through apoptosis")

# clex GEO

##0 cyclosporine
strongliterature['cyclosporine']= (1, ['doi: 10.4161/cc.22222'], "Cyclosporin A inhibits colon cancer cell growth independently of the calcineurin pathway")

##1 bexarotene
strongliterature['bexarotene']= (1, ['DOI: 10.1158/1940-6207.CAPR-13-0249'], "Chemopreventive Efficacy of Raloxifene, Bexarotene, and Their Combination on the Progression of Chemically Induced Colon Adenomas to Adenocarcinomas in Rats")

##2 nicotine
nodatafound['nicotine'] = "PMID: 24095863. Nicotine increases survival in human colon cancer cells treated with chemotherapeutic drugs."

##3 methylprednisolone
nodatafound['methylprednisolone'] = "Used in several cancer treatments as anti-inflamatory"

##4 methotrexate
strongliterature['methotrexate']= (1, ['https://pubmed.ncbi.nlm.nih.gov/28353361/'], "Enhancement of the Antitumor Effect of Methotrexate on Colorectal Cancer Cells via Lactate Calcium Salt Targeting Methionine Metabolism")

##5 rosiglitazone
strongliterature['rosiglitazone']= (1, ['https://doi.org/10.1177/0036850419886448'], "Rosiglitazone enhances the apoptotic effect of 5-fluorouracil in colorectal cancer cells with high-glucose-induced glutathione")

#MD GEO
#0 fluorouracil
strongliterature['fluorouracil']= (1, ['DOI: 10.1038/nrc1074'], "5-fluorouracil: mechanisms of action and clinical strategies ")

# KPM GEO 
# 0 prednisolone
nodatafound['prednisolone'] = "google: prednisolone colon cancer"

#  Degas GEO

##0 fulvestrant
nodatafound['fulvestrant'] = "Used for breast cancer"

##1 tretinoin
nodatafound['tretinoin'] = "Used in leukemia"


##2 propranolol
weakliterature['propranolol']= (1, ['10.1097/MD.0000000000001097'], "Propranolol Reduces Cancer Risk A Population-Based Cohort Study")


#nodatafound[''] = " "
#strongliterature['']= (1, [''], "")
#weakliterature['']= (1, [''], "")
#trials['']= (1, [''], "")






######################################################################
#
# external interface

allannotkeys = list(set(trials.keys()) | set(strongliterature.keys()) | set(weakliterature.keys()) | set(nodatafound.keys()))
print " Number of  Annotated Drugs for colorectal cancer", len(allannotkeys)

def getannotation_crc(key) :

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
