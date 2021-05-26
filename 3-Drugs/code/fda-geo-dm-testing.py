#
# code to test the matching of fda geo and dm drug data sets.
#

from code_for_drugnames_matching import read_file, findmatchingsecondlist
from generic_util import printmap, printlist
from file_parsing import extractdrugstring
from competitors import splitrecord





prcnolist = ['r', 'sm' , 'cv', 'bw', 'hci', 'ncx', 'ro', 'leo', 'acid', 'vbp',
             't', 'pgg', 'cea', 'tc', 'cell', 'vaccine', 'peptide', 'gene',
             'therapy', 'pathway', 'inibitor', 'intravenous', 'sodium', 'calcium', 'ae_37' ]
prc1 = read_file('../evaluation_data/TTD_drug_prostate_cancer_filtered_unique.txt')
prc2 = [s.lower() for s in prc1 if  s not in prcnolist]
prc3 = list(set(prc2))
#printlist(prc3, "List of prc treatment drugs")
# List of prc treatment drugs size  309



crcnolist = ['r', 'sm' , 'cv', 'bw', 'hci', 'ncx', 'ro', 'leo', 'acid', 'vbp',
             't', 'pgg', 'cea', 'tc', 'cell', 'vaccine', 'peptide', 'gene',
             'therapy', 'pathway', 'inibitor', 'intravenous', 'sodium', 'calcium' ]
crc1 = read_file('../evaluation_data/TTD_drug_colorectal_cancer_filtered_unique.txt')
crc2 = [s.lower() for s in crc1 if  s not in crcnolist]
crc3 = list(set(crc2))
#printlist(crc3, "List of crc treatment drugs")
# List of crc treatment drugs size  203


arthritisnolist = ['r', 'sm' , 'cv', 'bw', 'hci', 'ncx', 'ro', 'leo', 'acid', 'vbp', ]
arthritis1 = read_file('../evaluation_data/TTD_drug_rheumatoid_arthritis_filtered_unique.txt')
arthritis2 = [s.lower() for s in arthritis1 if  s not in arthritisnolist]
arthritis3 = list(set(arthritis2))
#printlist(arthritis3, "List of arthritis treatment drugs")
# List of arthritis treatment drugs size 324



asthmanolist = ['r', 'sm' , 'cv', 'bw', 'hci', 'ncx', 'ro', 'leo', 'acid', 'vbp', ]
asthma1 = read_file('../evaluation_data/TTD_drug_asthma_filtered_unique.txt')
asthma2 = [s.lower() for s in asthma1 if  s not in asthmanolist]
asthma3 = list(set(asthma2))
#printlist(asthma3, "List of asthma treatment drugs")
# List of asthma treatment drugs size 479


trial1 = read_file('../ClinicalTrials_drugs_new_myFiltering_unique.txt')
trial2 = [s.lower() for s in trial1]
trial3 = list(set(trial2))
# printlist(trial3, "List of covid19 trial drugs")
# List of covid19 trial drugs size 360



fda1 = read_file('../FDA_approved_drugs_filtered_unique.txt')
fda2 = [s.lower() for s in fda1]
fda3 = list(set(fda2))
#printlist(fda3, "List of fda approved drugs")
# fda list of 6308 items


geolist1 = read_file('../DrugGEO_drugs.txt')
geolist2 = [s.lower() for s in geolist1]
geolist3 = [extractdrugstring(s, 'GEO') for s in geolist2]
geolist31 = [x for x in geolist3 if x != None]
geolist4 = list(set(geolist31))
#printlist(geolist4, "List of all GEO drugs")
# geo list of 132 items 


dmlist1 = read_file('../DrugMatrix_drugs.txt')
dmlist2 = [s.lower() for s in dmlist1]
dmlist3 = [extractdrugstring(s, 'DM') for s in dmlist2]
dmlist31 = [x for x in dmlist3 if x != None]
dmlist4 = list(set(dmlist31))
#printlist(dmlist4, "List of all DM drugs")
# DM list of 656 items





####################################################################
#  simple intersection test..

#print "intersection geo fda", len(set(fda3)& set(geolist4))
# intersection geo fda 75

#print "intersection dm fda", len(set(fda3)& set(dmlist4))
# intersection dm fda 216

#print "intersection dm geo", len(set(geolist4)& set(dmlist4))
# intersection dm geo 66 

######################################################
# use of  matching function

#inters_geo_fda = findmatchingsecondlist(geolist4, fda3, '.', 'dump-testing-fda-geo-dm1.txt')
#printmap(inters_geo_fda, "intersection geo fda with matching" )
#intersection geo fda with matching size 93

#inters_dm_fda = findmatchingsecondlist(dmlist4, fda3, '.', 'dump-testing-fda-geo-dm2.txt')
#printmap(inters_dm_fda, "intersection dm fda with matching" )
#intersection dm fda with matching size 342

#inters_dm_geo = findmatchingsecondlist(dmlist4, geolist4, '.', 'dump-testing-fda-geo-dm3.txt')
#printmap(inters_dm_geo, "intersection dm geo with matching" )
#intersection dm geo with matching size 78

#inters_geo_dm = findmatchingsecondlist(geolist4, dmlist4,'.', 'dump-testing-fda-geo-dm4.txt')
#printmap(inters_geo_dm, "intersection geo dm with matching" )
# intersection geo dm with matching size 72


#########################################################
#
# cmap runs  no fda filter

fdafilter = True
linesfile1 = read_file('../CMAP_PharmacoGx/CMAP_PharmacoGx/CMAP_Asthma.csv')
drugnamesasthma1_cmap = [splitrecord(x) for x in linesfile1[1:]]
##printlist(linesfile1, 'CMAP_asthma')
printlist(drugnamesasthma1_cmap, 'CMAP_asthma names only')
if fdafilter == True :
    inters_fda = findmatchingsecondlist(drugnamesasthma1_cmap, fda3, '.', 'dump-testing-fda-cmap.txt')
    drugnamesasthma1_cmap = inters_fda.keys()
    printlist(drugnamesasthma1_cmap, 'CMAP_asthma names only, with fda filter ')
    #CMAP_asthma names only, with fda filter  size 429

### covid19
inters_trial_cmap = findmatchingsecondlist(drugnamesasthma1_cmap, trial3, '.', 'dump-testing-trial-cmap.txt')
printmap(inters_trial_cmap, "intersection trial cmap with matching" )
#intersection trial cmap with matching size 77
#intersection trial cmapw with fda filter  with matching size 64

### asthma
inters_asthma_cmap = findmatchingsecondlist(drugnamesasthma1_cmap, asthma3, '.', 'dump-testing-asthma-cmap.txt')
printmap(inters_asthma_cmap, "intersection asthma cmap with matching" )
###intersection asthma cmap with matching size 19
## intersection asthma cmap with matching size 9 with fda filter

### arthritis
inters_arthritis_cmap = findmatchingsecondlist(drugnamesasthma1_cmap, arthritis3, '.', 'dump-testing-arthritis-cmap.txt')
printmap(inters_arthritis_cmap, "intersection arthritis cmap with matching" )
###intersection arthriti cmap with matching size 30
## intersection arthritis cmap with matching size 26 with fda filter

### crc
inters_crc_cmap = findmatchingsecondlist(drugnamesasthma1_cmap, crc3, '.', 'dump-testing-crc-cmap.txt')
printmap(inters_crc_cmap, "intersection crc cmap with matching" )
###intersection crc cmap with matching size 10
## intersection crc cmap with matching size 7 with fda filter

# prc
inters_prc_cmap = findmatchingsecondlist(drugnamesasthma1_cmap, prc3, '.', 'dump-testing-prc-cmap.txt')
printmap(inters_prc_cmap, "intersection prc cmap with matching" )
#intersection prc cmap with matching size 21
## intersection prc cmap with matching size 16 with fda filter


##############################################################
# covid19 trials

#inters_trial_fda = findmatchingsecondlist(trial3, fda3, '.', 'dump-testing-fda-trial.txt')
#printmap(inters_trial_fda, "intersection trial fda with matching" )
#intersection trial fda with matching size 134
#listtrialfda = inters_trial_fda.keys()
#inters_trial_fda_geo = findmatchingsecondlist(geolist4, listtrialfda, '.', 'dump-testing-fda-trial-geo.txt')
#printmap(inters_trial_fda_geo, "intersection trial fda geo with matching" )
#intersection trial fda geo with matching size 34


#inters_trial_fda = findmatchingsecondlist(trial3, fda3, '.', 'dump-testing-fda-trial.txt')
#printmap(inters_trial_fda, "intersection trial fda with matching" )
#intersection trial fda with matching size 134
#listtrialfda = inters_trial_fda.keys()
#inters_trial_fda_dm = findmatchingsecondlist(dmlist4, listtrialfda, '.', 'dump-testing-fda-trial-dm.txt')
#printmap(inters_trial_fda_dm, "intersection trial fda dm with matching" )
#intersection trial fda dm with matching size  61


# covid19 trials no fda filter

##inters_trial_dm = findmatchingsecondlist(dmlist4, trial3, '.', 'dump-testing-trial-dm.txt')
##printmap(inters_trial_dm, "intersection trial  dm with matching" )
#intersection trial dm with matching size  69


##inters_trial_geo = findmatchingsecondlist(geolist4, trial3, '.', 'dump-testing-trial-geo.txt')
##printmap(inters_trial_geo, "intersection trial  geo with matching" )
#intersection trial  geo with matching size 37



# asthma

#inters_asthma_fda = findmatchingsecondlist(asthma3, fda3, '.', 'dump-testing-fda-asthms.txt')
#printmap(inters_asthma_fda, "intersection asthma fda with matching" )
#intersection asthma fda with matching size 46
#listasthmafda = inters_asthma_fda.keys()
#inters_asthma_fda_dm = findmatchingsecondlist(dmlist4, listasthmafda, '.', 'dump-testing-fda-asthma-dm.txt')
#printmap(inters_asthma_fda_dm, "intersection asthma fda dm with matching" )
#intersection asthma fda dm with matching size 9


#inters_asthma_fda = findmatchingsecondlist(asthma3, fda3, '.', 'dump-testing-fda-asthms.txt')
#printmap(inters_asthma_fda, "intersection asthma fda with matching" )
#intersection asthma fda with matching size 46
#listasthmafda = inters_asthma_fda.keys()
#inters_asthma_fda_geo = findmatchingsecondlist(geolist4, listasthmafda, '.', 'dump-testing-fda-asthma-geo.txt')
#printmap(inters_asthma_fda_geo, "intersection asthma fda geo with matching" )
#intersection asthma fda geo with matching size


# asthma senza fda filtering

##inters_asthma_dm = findmatchingsecondlist(dmlist4, asthma3, '.', 'dump-testing-asthma-dm.txt')
##printmap(inters_asthma_dm, "intersection asthma  dm with matching" )
#intersection asthma  dm with matching size 10

##inters_asthma_geo = findmatchingsecondlist(geolist4, asthma3 , '.', 'dump-testing-asthma-geo.txt')
##printmap(inters_asthma_geo, "intersection asthma  geo with matching" )
#intersection asthma  geo with matching size



# artritis

##inters_arthritis_fda = findmatchingsecondlist(arthritis3, fda3, '.', 'dump-testing-fda-arthritis.txt')
##printmap(inters_arthritis_fda, "intersection arthritis fda with matching" )
###intersection arthritis fda with matching size  32
##listarthritisfda = inters_arthritis_fda.keys()
##inters_arthritis_fda_dm = findmatchingsecondlist(dmlist4, listarthritisfda, '.', 'dump-testing-fda-arthritis-dm.txt')
##printmap(inters_arthritis_fda_dm, "intersectionarthritis fda dm with matching" )
###intersection arthritis fda dm with matching size  23


##inters_arthritis_fda = findmatchingsecondlist(arthritis3, fda3, '.', 'dump-testing-fda-arthritis.txt')
##printmap(inters_arthritis_fda, "intersection arthritis fda with matching" )
###intersection arthritis fda with matching size 32
##listarthritisfda = inters_arthritis_fda.keys()
##inters_arthritis_fda_geo = findmatchingsecondlist(geolist4, listarthritisfda, '.', 'dump-testing-fda-arthritis-geo.txt')
##printmap(inters_arthritis_fda_geo, "intersection arthritis fda geo with matching" )
###intersection arthritis fda geo with matching size 8


# artritis senza fda filtering

##inters_arthritis_dm = findmatchingsecondlist(dmlist4, arthritis3, '.', 'dump-testing-arthritis-dm.txt')
##printmap(inters_arthritis_dm, "intersectionarthritis fda dm with matching" )
###intersection arthritis  dm with matching size  25

##inters_arthritis_geo = findmatchingsecondlist(geolist4, arthritis3, '.', 'dump-testing-arthritis-geo.txt')
##printmap(inters_arthritis_geo, "intersection arthritis fda geo with matching" )
###intersection arthritis  geo with matching size 11


# crc

##inters_crc_fda = findmatchingsecondlist(crc3, fda3, '.', 'dump-testing-fda-crc.txt')
##printmap(inters_crc_fda, "intersection crc fda with matching" )
###intersection crc fda with matching size  28
##listcrcfda = inters_crc_fda.keys()
##inters_crc_fda_dm = findmatchingsecondlist(dmlist4, listcrcfda, '.', 'dump-testing-fda-crc-dm.txt')
##printmap(inters_crc_fda_dm, "intersection crc fda dm with matching" )
###intersection crc fda dm with matching size  9


##inters_crc_fda = findmatchingsecondlist(crc3, fda3, '.', 'dump-testing-fda-crc.txt')
##printmap(inters_crc_fda, "intersection crc fda with matching" )
###intersection crc fda with matching size 28
##listcrcfda = inters_crc_fda.keys()
##inters_crc_fda_geo = findmatchingsecondlist(geolist4, listcrcfda, '.', 'dump-testing-fda-crc-geo.txt')
##printmap(inters_crc_fda_geo, "intersection crc fda geo with matching" )
###intersection crc fda geo with matching size 8

# crc senza fda filtering


##inters_crc_dm = findmatchingsecondlist(dmlist4, crc3, '.', 'dump-testing-crc-dm.txt')
##printmap(inters_crc_dm, "intersection crc  dm with matching" )
###intersection crc  dm with matching size  11

##inters_crc_geo = findmatchingsecondlist(geolist4, crc3, '.', 'dump-testing-crc-geo.txt')
##printmap(inters_crc_geo, "intersection crc  geo with matching" )
###intersection crc  geo with matching size 12




# prc

##inters_prc_fda = findmatchingsecondlist(prc3, fda3, '.', 'dump-testing-fda-prc.txt')
##printmap(inters_prc_fda, "intersection prc fda with matching" )
###intersection prc fda with matching size  32
##listprcfda = inters_prc_fda.keys()
##inters_prc_fda_dm = findmatchingsecondlist(dmlist4, listprcfda, '.', 'dump-testing-fda-prc-dm.txt')
##printmap(inters_prc_fda_dm, "intersection prc fda dm with matching" )
###intersection prc fda dm with matching size  10


##inters_prc_fda = findmatchingsecondlist(prc3, fda3, '.', 'dump-testing-fda-prc.txt')
##printmap(inters_prc_fda, "intersection prc fda with matching" )
###intersection prc fda with matching size 32
##listprcfda = inters_prc_fda.keys()
##inters_prc_fda_geo = findmatchingsecondlist(geolist4, listprcfda, '.', 'dump-testing-fda-prc-geo.txt')
##printmap(inters_prc_fda_geo, "intersection prc fda geo with matching" )
###intersection prc fda geo with matching size 8

# prc senza fda filtering

##inters_prc_dm = findmatchingsecondlist(dmlist4, prc3, '.', 'dump-testing-prc-dm.txt')
##printmap(inters_prc_dm, "intersection prc  dm with matching" )
#intersection prc  dm with matching size  15

##inters_prc_geo = findmatchingsecondlist(geolist4, prc3, '.', 'dump-testing-prc-geo.txt')
##printmap(inters_prc_geo, "intersection prc  geo with matching" )
###intersection prc  geo with matching size 


