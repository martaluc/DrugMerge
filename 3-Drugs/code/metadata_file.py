# file holding all teh metadata on the directories and filnames.

tablemap = {}

####################################################################
#
#
#
# GEO data - covid19 cells

tablemap[('cells','GEO')] = [
            ('c&pd5j8',
             '../covid-19-covid-cells_drugpertutbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-covid-cells_drugpertutbationGEO/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),

            ('c&pd7j8', '../covid-19-covid-cells_drugpertutbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-covid-cells_drugpertutbationGEO/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),

            ('clex900',
             '../covid-19-covid-cells_drugpertutbationGEO',
             'enrichR_ClustEx900_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-covid-cells_drugpertutbationGEO/ClinicalTrials',
             'enrichR_ClustEx900_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),
            
             ('clex420',
              '../covid-19-covid-cells_drugpertutbationGEO',
              'enrichR_ClustEx420_Drug_Perturbations_from_GEO_2014_perc.csv',
              '../covid-19-covid-cells_drugpertutbationGEO/ClinicalTrials',
              'enrichR_ClustEx420_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
              'GEO'),
            
            ('MD',
             '../covid-19-covid-cells_drugpertutbationGEO',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc.csv',
              '../covid-19-covid-cells_drugpertutbationGEO/ClinicalTrials',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),
            
            ('KPM',
             '../covid-19-covid-cells_drugpertutbationGEO',
             'enrichR_KPM_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-covid-cells_drugpertutbationGEO/ClinicalTrials',
             'enrichR_KPM_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),
   ]


####################################################################
#
#
#
# GEO data - PBMC data

tablemap[('pbmc','GEO')] = [
            ('c&pd5j8',
             '../covid-19-pbmc_drugperturbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-pbmc_drugperturbationGEO/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),

            ('c&pd7j8',
             '../covid-19-pbmc_drugperturbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-pbmc_drugperturbationGEO/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),

            ('clex3800',
             '../covid-19-pbmc_drugperturbationGEO',
             'enrichR_ClustEx3800_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-pbmc_drugperturbationGEO/ClinicalTrials',
             'enrichR_ClustEx3800_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),
            
            ('clex420',
              '../covid-19-pbmc_drugperturbationGEO',
              'enrichR_ClustEx1940_Drug_Perturbations_from_GEO_2014_perc.csv',
              '../covid-19-pbmc_drugperturbationGEO/ClinicalTrials',
              'enrichR_ClustEx1940_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
              'GEO'),
            
            ('MD',
             '../covid-19-pbmc_drugperturbationGEO',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc.csv',
              '../covid-19-pbmc_drugperturbationGEO/ClinicalTrials',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),

            ('KPM',
             '../covid-19-pbmc_drugperturbationGEO',
             'enrichR_KPM_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-pbmc_drugperturbationGEO/ClinicalTrials',
             ' ',
             'GEO'),
           
            
            ('Degas',
             '../covid-19-pbmc_drugperturbationGEO',
             'enrichR_Degas_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-pbmc_drugperturbationGEO/ClinicalTrials',
             'enrichR_Degas_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),
   ]


####################################################################
#
#
#
# GEO data - BALF data

tablemap[('balf','GEO')] = [
            ('c&pd5j8',
             '../covid-19-balf_drugperturbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-balf_drugperturbationGEO/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),

            ('c&pd7j8',
             '../covid-19-balf_drugperturbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-balf_drugperturbationGEO/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),

            ('clex3380',
             '../covid-19-balf_drugperturbationGEO',
             'enrichR_ClustEx3380_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-balf_drugperturbationGEO/ClinicalTrials',
             'enrichR_ClustEx3380_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),
            
             ('clex1890',
              '../covid-19-balf_drugperturbationGEO',
              'enrichR_ClustEx1890_Drug_Perturbations_from_GEO_2014_perc.csv',
              '../covid-19-balf_drugperturbationGEO/ClinicalTrials',
              'enrichR_ClustEx1890_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
              'GEO'),
            
            ('MD',
             '../covid-19-balf_drugperturbationGEO',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc.csv',
              '../covid-19-balf_drugperturbationGEO/ClinicalTrials',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),
            

            ('KPM',
            '../covid-19-balf_drugperturbationGEO',
            'enrichR_KPM_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-balf_drugperturbationGEO/ClinicalTrials',
            'enrichR_KPM_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
            'GEO'),
            
            ('Degas',
             '../covid-19-balf_drugperturbationGEO',
             'enrichR_Degas_Drug_Perturbations_from_GEO_2014_perc.csv',
             '../covid-19-balf_drugperturbationGEO_/ClinicalTrials',
             'enrichR_Degas_Drug_Perturbations_from_GEO_2014_perc_ct.csv',
             'GEO'),


   ]


####################################################################
#
#
#
# DM drugmatix data covid19 cells
tablemap[('cells','DM')] = [
            ('c&pd5j8',
             '../covid-19-covid-cells_drugmatrix',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_DrugMatrix_perc.csv',
             '../covid-19-covid-cells_drugmatrix/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_DrugMatrix_perc_ct.csv',
             'DM'),

            ('c&pd7j8',
             '../covid-19-covid-cells_drugmatrix',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_DrugMatrix_perc.csv',
             '../covid-19-covid-cells_drugmatrix/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_DrugMatrix_perc_ct.csv',
             'DM'),

            ('clex900',
             '../covid-19-covid-cells_drugmatrix',
             'enrichR_ClustEx900_DrugMatrix_perc.csv',
             '../covid-19-covid-cells_drugmatrix/ClinicalTrials',
             'enrichR_ClustEx900_DrugMatrix_perc_ct.csv',
             'DM'),
            
             ('clex420',
              '../covid-19-covid-cells_drugmatrix',
              'enrichR_ClustEx420_DrugMatrix_perc.csv',
              '../covid-19-covid-cells_drugmatrix/ClinicalTrials',
              'enrichR_ClustEx420_DrugMatrix_perc_ct.csv',
              'DM'),
            
            ('MD',
             '../covid-19-covid-cells_drugmatrix',
             'enrichR_MD_DrugMatrix_perc.csv',
              '../covid-19-covid-cells_drugmatrix/ClinicalTrials',
             'enrichR_MD_DrugMatrix_perc_ct.csv',
             'DM'),
            
            ('KPM',
             '../covid-19-covid-cells_drugmatrix',
             'enrichR_KPM_DrugMatrix_perc.csv',
             '../covid-19-covid-cells_drugmatrix/ClinicalTrials',
             'enrichR_KPM_DrugMatrix_perc_ct.csv',
             'DM'),
   ]

####################################################################
#
#
#
# drugmatix data PBMC data
tablemap[('pbmc','DM')] = [
            ('c&pd5j8',
             '../covid-19-pbmc_drugmatrix',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_DrugMatrix_perc.csv',
             '../covid-19-pbmc_drugmatrix/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_DrugMatrix_perc_ct.csv',
             'DM'),

            ('c&pd7j8',
             '../covid-19-pbmc_drugmatrix',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_DrugMatrix_perc.csv',
             '../covid-19-pbmc_drugmatrix/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_DrugMatrix_perc_ct.csv',
             'DM'),

            ('clex1940',
             '../covid-19-pbmc_drugmatrix',
             'enrichR_ClustEx1940_DrugMatrix_perc.csv',
             '../covid-19-pbmc_drugmatrix/ClinicalTrials',
             '',
             'DM'),
            
             ('clex3800',
              '../covid-19-pbmc_drugmatrix',
              'enrichR_ClustEx3800_DrugMatrix_perc.csv',
              '../covid-19-pbmc_drugmatrix/ClinicalTrials',
              '',
              'DM'),
            
            ('MD',
             '../covid-19-pbmc_drugmatrix',
             'enrichR_MD_DrugMatrix_perc.csv',
              '../covid-19-covid-cells_drugmatrix/ClinicalTrials',
             'enrichR_MD_DrugMatrix_perc_ct.csv',
             'DM'),
            
            ('KPM',
             '../covid-19-pbmc_drugmatrix',
             'enrichR_KPM_DrugMatrix_perc.csv',
             '../covid-19-pbmc_drugmatrix/ClinicalTrials',
             'enrichR_KPM_DrugMatrix_perc_ct.csv',
             'DM'),

            ('Degas',
             '../covid-19-pbmc_drugmatrix',
             'enrichR_Degas_DrugMatrix_perc.csv',
             '../covid-19-balf_drugmatrix/ClinicalTrials',
             '',
             'DM'),
 
   ]


####################################################################
#
#
#
# drugmatix data BALF data
tablemap[('balf','DM')] = [
            ('c&pd5j8',
             '../covid-19-balf_drugmatrix',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_DrugMatrix_perc.csv',
             '../covid-19-balf_drugmatrix/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_DrugMatrix_perc_ct.csv',
             'DM'),

            ('c&pd7j8',
             '../covid-19-balf_drugmatrix',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_DrugMatrix_perc.csv',
             '../covid-19-balf_drugmatrix/ClinicalTrials',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_DrugMatrix_perc_ct.csv',
             'DM'),

            ('clex3380',
             '../covid-19-balf_drugmatrix',
             'enrichR_ClustEx3380_DrugMatrix_perc.csv',
             '../covid-19-balf_drugmatrix/ClinicalTrials',
             'enrichR_ClustEx3380_DrugMatrix_perc_ct.csv',
             'DM'),
            
             ('clex1890',
              '../covid-19-balf_drugmatrix',
              'enrichR_ClustEx1890_DrugMatrix_perc.csv',
              '../covid-19-balf_drugmatrix/ClinicalTrials',
              'enrichR_ClustEx1890_DrugMatrix_perc_ct.csv',
              'DM'),
            
            ('MD',
             '../covid-19-balf_drugmatrix',
             'enrichR_MD_DrugMatrix_perc.csv',
              '../covid-19-balf_drugmatrix/ClinicalTrials',
             'enrichR_MD_DrugMatrix_perc_ct.csv',
             'DM'),

            
            ('KPM',
             '../covid-19-balf_drugmatrix',
             'enrichR_KPM_DrugMatrix_perc.csv',
             '../covid-19-balf_drugmatrix/ClinicalTrials',
             'enrichR_KPM_DrugMatrix_perc_ct.csv',
             'DM'),

            ('Degas',
             '../covid-19-balf_drugmatrix',
             'enrichR_Degas_DrugMatrix_perc.csv',
             '../covid-19-balf_drugmatrix/ClinicalTrials',
             'enrichR_Degas_DrugMatrix_perc_ct.csv',
             'DM'),
           
   ]



####################################################################
#
#
#
# GEO data - Asthma data

tablemap[('asth','GEO')] = [
            ('c&pd5j8',
             '../Asthma_drugperturbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('clex',
             '../Asthma_drugperturbationGEO',
             'enrichR_ClustEx1300_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('MD',
             '../Asthma_drugperturbationGEO',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc.csv',
              '',
             '',
             'GEO'),
            
            ('KPM',
             '../Asthma_drugperturbationGEO',
             'enrichR_KPM_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('Degas',
             '../Asthma_drugperturbationGEO',
             'enrichR_Degas_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),
               
            ]

####################################################################
#
#
#
# GEO data - Rheunatoid Arthritis data

tablemap[('arth','GEO')] = [
            ('c&pd5j8',
             '../Rheumatoid_arthritis_drugperturbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.7-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('clex',
             '../Rheumatoid_arthritis_drugperturbationGEO',
             'enrichR_ClustEx500_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('MD',
             '../Rheumatoid_arthritis_drugperturbationGEO',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc.csv',
              '',
             '',
             'GEO'),
            
            ('KPM',
             '../Rheumatoid_arthritis_drugperturbationGEO',
             'enrichR_KPM_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('Degas',
             '../Rheumatoid_arthritis_drugperturbationGEO',
             'enrichR_Degas_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),
               
            ]

####################################################################
#
#
#
# GEO data - Colorectal cancer  data

tablemap[('crc','GEO')] = [
            ('c&pd7j8',
             '../Colorectal_cancer_drugperturbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('clex',
             '../Colorectal_cancer_drugperturbationGEO',
             'enrichR_ClustEx3800_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('MD',
             '../Colorectal_cancer_drugperturbationGEO',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc.csv',
              '',
             '',
             'GEO'),
            
            ('KPM',
             '../Colorectal_cancer_drugperturbationGEO',
             'enrichR_KPM_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('Degas',
             '../Colorectal_cancer_drugperturbationGEO',
             'enrichR_Degas_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),
               
]


####################################################################
#
#
#
# GEO data - Prostate cancer  data

tablemap[('prc','GEO')] = [
            ('c&pd7j8',
             '../Prostate_cancer_drugperturbationGEO',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('clex',
             '../Prostate_cancer_drugperturbationGEO',
             'enrichR_ClustEx3000_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

            ('MD',
             '../Prostate_cancer_drugperturbationGEO',
             'enrichR_MD_Drug_Perturbations_from_GEO_2014_perc.csv',
              '',
             '',
             'GEO'),
            
            ('KPM',
             '../Prostate_cancer_drugperturbationGEO',
             'enrichR_KPM_Drug_Perturbations_from_GEO_2014_perc.csv',
             '',
             '',
             'GEO'),

          
               
]


####################################################################
#
#
#
# Drug matrix data - Asthma data

tablemap[('asth','DM')] = [
            ('c&pd5j9',
             '../Asthma_drugmatrix',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_DrugMatrix_perc.csv',
             '',
             '',
             'DM'),

            ('clex',
             '../Asthma_drugmatrix',
             'enrichR_ClustEx1300_DrugMatrix_perc.csv',
             '',
             '',
             'DM'),

            ('MD',
             '../Asthma_drugmatrix',
             'enrichR_MD_DrugMatrix_perc.csv',
              '',
             '',
             'DM'),
            

               
            ]

####################################################################
#
#
#
# Drug matrix data - Rheunatroid arthritis  data

tablemap[('arth','DM')] = [
            ('c&pd5j7',
             '../Rheumatoid_arthritis_drugmatrix',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.7-marklargest_DrugMatrix_perc.csv',
             '',
             '',
             'DM'),

            ('clex',
             '../Rheumatoid_arthritis_drugmatrix',
             'enrichR_ClustEx500_DrugMatrix_perc.csv',
             '',
             '',
             'DM'),

            ('MD',
             '../Rheumatoid_arthritis_drugmatrix',
             'enrichR_MD_DrugMatrix_perc.csv',
              '',
             '',
             'DM'),
            
            ('KPM',
             '../Rheumatoid_arthritis_drugmatrix',
             'enrichR_KPM_DrugMatrix_perc.csv',
             '',
             '',
             'DM'),

           ('Degas',
             '../Rheumatoid_arthritis_drugmatrix',
             'enrichR_Degas_DrugMatrix_perc.csv',
             '',
             '',
             'GEO'),
               
]         
               


####################################################################
#
#
#
# Drug Matrix data - Colorectal cancer  data

tablemap[('crc','DM')] = [
            ('c&pd7j8',
             '../Colorectal_cancer_drugmatrix',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_DrugMatrix_perc.csv',
             '',
             '',
             'DM'),

            ('clex',
             '../Colorectal_cancer_drugmatrix',
             'enrichR_ClustEx3800_DrugMatrix_perc.csv',
             '',
             '',
             'DM'),

            ('MD',
             '../Colorectal_cancer_drugmatrix',
             'enrichR_MD_DrugMatrix_perc.csv',
              '',
             '',
             'DM'),
            
            ('KPM',
             '../Colorectal_cancer_drugmatrix',
             'enrichR_KPM_DrugMatrix_perc.csv',
             '',
             '',
             'DM'),

          
]

####################################################################
#
#
#
# Drug Matrix data - Prostate cancer  data

tablemap[('prc','DM')] = [
##            ('c&pd7j8',
##             '../Prostate_cancer_drugmatrix',
##             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_DrugMatrix_perc.csv',
##             '',
##             '',
##             'DM'),

            ('clex',
             '../Prostate_cancer_drugmatrix',
             'enrichR_ClustEx3000_DrugMatrix_perc.csv',
             '',
             '',
             'DM'),
##
##            ('MD',
##             '../Prostate_cancer_drugmatrix',
##             'enrichR_MD_DrugMatrix_perc.csv',
##              '',
##             '',
##             'DM'),
##            
##            ('KPM',
##             '../Prostate_cancer_drugmatrix',
##             'enrichR_KPM_DrugMatrix_perc.csv',
##             '',
##             '',
##             'DM'),

          
]



####################################################################
#
#
#
# CMAP  data - Prostate cancer  data

tablemap[('prc','CMAPup')] = [
               ('clex',
            '../Prostate_cancer_CMAP',
             'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPup'),

            ('c&pd7j8',
            '../Prostate_cancer_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_up_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPup'),

               ('kpm',
            '../Prostate_cancer_CMAP',
             'enrichR_KPM_Old_CMAP_up_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPup'),

               ('MD',
            '../Prostate_cancer_CMAP',
             'enrichR_MD_Old_CMAP_up_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPup'),



]

tablemap[('prc','CMAPdown')] = [
               ('clex',
            '../Prostate_cancer_CMAP',
             'enrichR_ClustEx3000_Old_CMAP_down_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPdown'),

            ('c&pd7j8',
            '../Prostate_cancer_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPdown'),


            ('kpm',
            '../Prostate_cancer_CMAP',
             'enrichR_KPM_Old_CMAP_down_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPdown'),

               ('MD',
            '../Prostate_cancer_CMAP',
             'enrichR_MD_Old_CMAP_down_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPdown'),


               ('degas',
            '../Prostate_cancer_CMAP',
             'enrichR_Degas_Old_CMAP_down_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPdown'),


]

tablemap[('prc','CMAPupdown')] = [
               ('clex',
            '../Prostate_cancer_CMAP',
             'enrichR_ClustEx3000_Old_CMAP_down_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPupdown'),

            ('c&pd7j8',
            '../Prostate_cancer_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPupdown'),

            ('kpm',
            '../Prostate_cancer_CMAP',
             'enrichR_KPM_Old_CMAP_up_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPupdown'),

               ('MD',
            '../Prostate_cancer_CMAP',
             'enrichR_MD_Old_CMAP_up_perc.csv',
#           'enrichR_ClustEx3000_Old_CMAP_up_perc.csv',
#             'enrichR_ClustEx3000_Old_CMAP_updown_perc.csv',
             '',
             '',
             'CMAPupdown'),



]

####################################################################
#
#
#
# CMAP  data - colorectal cancer  data



tablemap[('crc','CMAPup')] = [
               ('clex',
            '../Colorectal_cancer_CMAP',
             'enrichR_ClustEx3800_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),

            ('c&pd7j8',
            '../Colorectal_cancer_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),

               ('kpm',
            '../Colorectal_cancer_CMAP',
             'enrichR_KPM_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),

               ('MD',
            '../Colorectal_cancer_CMAP',
             'enrichR_MD_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),



]

tablemap[('crc','CMAPdown')] = [
               ('clex',
            '../Colorectal_cancer_CMAP',
             'enrichR_ClustEx3800_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),

            ('c&pd7j8',
            '../Colorectal_cancer_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),


            ('kpm',
            '../Colorectal_cancer_CMAP',
             'enrichR_KPM_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),

               ('MD',
            '../Colorectal_cancer_CMAP',
             'enrichR_MD_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),


               ('degas',
            '../Colorectal_cancer_CMAP',
             'enrichR_Degas_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),


]

tablemap[('crc','CMAPupdown')] = [
               ('clex',
            '../Colorectal_cancer_CMAP',
             'enrichR_ClustEx3800_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPupdown'),

            ('c&pd7j8',
            '../Colorectal_cancer_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPupdown'),

            ('kpm',
            '../Colorectal_cancer_CMAP',
             'enrichR_KPM_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPupdown'),

               ('MD',
            '../Colorectal_cancer_CMAP',
             'enrichR_MD_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPupdown'),



]




####################################################################
#
#
#
# CMAP  data - asthma  data



tablemap[('asth','CMAPup')] = [
               ('clex',
            '../Asthma_CMAP',
             'enrichR_ClustEx1300_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),

            ('c&pd5j8',
            '../Asthma_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),

               ('kpm',
            '../Asthma_CMAP',
             'enrichR_KPM_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),

               ('MD',
            '../Asthma_CMAP',
             'enrichR_MD_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),



]

tablemap[('asth','CMAPdown')] = [
               ('clex',
            '../Asthma_CMAP',
             'enrichR_ClustEx1300_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),

            ('c&pd5j8',
            '../Asthma_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),


            ('kpm',
            '../Asthma_CMAP',
             'enrichR_KPM_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),

               ('MD',
            '../Asthma_CMAP',
             'enrichR_MD_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),



]

tablemap[('asth','CMAPupdown')] = [
               ('clex',
            '../Asthma_CMAP',
             'enrichR_ClustEx1300_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPupdown'),

            ('c&pd5j8',
            '../Asthma_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPupdown'),

            ('kpm',
            '../Asthma_CMAP',
             'enrichR_KPM_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPupdown'),

               ('MD',
            '../Asthma_CMAP',
             'enrichR_MD_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPupdown'),



]


####################################################################
#
#
#
# CMAP  data - arthritis  data




tablemap[('arth','CMAPup')] = [
               ('clex',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_ClustEx500_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),

            ('c&pd5j8',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),

               ('kpm',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_KPM_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),

               ('MD',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_MD_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),


               ('degas',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_Degas_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPup'),


]

tablemap[('arth','CMAPdown')] = [
               ('clex',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_ClustEx500_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),

            ('c&pd5j8',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),


            ('kpm',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_KPM_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),

               ('MD',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_MD_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),


               ('degas',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_Degas_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPdown'),


]

tablemap[('arth','CMAPupdown')] = [
               ('clex',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_ClustEx500_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPupdown'),

            ('c&pd5j8',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down_perc.csv',
             '',
             '',
             'CMAPupdown'),

            ('kpm',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_KPM_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPupdown'),

               ('MD',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_MD_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPupdown'),


               ('degas',
            '../Rheumatoid_arthritis_CMAP',
             'enrichR_Degas_Old_CMAP_up_perc.csv',
             '',
             '',
             'CMAPupdown'),


]



####################################################################
#
#
#
# CMAP  data - balf  data




tablemap[('balf','CMAPup')] = [

               ('clex1890',
            '../covid-19-balf_CMAP',
             'enrichR_ClustEx1890_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),

            ('clex3380',
            '../covid-19-balf_CMAP',
             'enrichR_ClustEx3380_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


            ('c&pd5j8',
            '../covid-19-balf_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup'),

            ('c&pd7j8',
            '../covid-19-balf_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


               ('kpm',
            '../covid-19-balf_CMAP',
             'enrichR_KPM_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),

               ('MD',
            '../covid-19-balf_CMAP',
             'enrichR_MD_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


               ('degas',
            '../covid-19-balf_CMAP',
             'enrichR_Degas_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


]

tablemap[('balf','CMAPdown')] = [


               ('clex1890',
            '../covid-19-balf_CMAP',
             'enrichR_ClustEx1890_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),

            ('clex3380',
            '../covid-19-balf_CMAP',
             'enrichR_ClustEx3380_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


            ('c&pd5j8',
            '../covid-19-balf_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),

            ('c&pd7j8',
            '../covid-19-balf_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


               ('kpm',
            '../covid-19-balf_CMAP',
             'enrichR_KPM_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),

               ('MD',
            '../covid-19-balf_CMAP',
             'enrichR_MD_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


               ('degas',
            '../covid-19-balf_CMAP',
             'enrichR_Degas_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


]

tablemap[('balf','CMAPupdown')] = [

            ('clex1890',
            '../covid-19-balf_CMAP',
             'enrichR_ClustEx1890_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

            ('clex3380',
            '../covid-19-balf_CMAP',
             'enrichR_ClustEx3380_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),


            ('c&pd5j8',
            '../covid-19-balf_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

            ('c&pd7j8',
            '../covid-19-balf_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),


               ('kpm',
            '../covid-19-balf_CMAP',
             'enrichR_KPM_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

               ('MD',
            '../covid-19-balf_CMAP',
             'enrichR_MD_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),


               ('degas',
            '../covid-19-balf_CMAP',
             'enrichR_Degas_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

]


####################################################################
#
#
#
# CMAP  data - pbmc  data




tablemap[('pbmc','CMAPup')] = [

               ('clex1890',
            '../covid-19-pbmc_CMAP',
             'enrichR_ClustEx1940_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),

            ('clex3380',
            '../covid-19-pbmc_CMAP',
             'enrichR_ClustEx3800_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


            ('c&pd5j8',
            '../covid-19-pbmc_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup'),

            ('c&pd7j8',
            '../covid-19-pbmc_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


               ('kpm',
            '../covid-19-pbmc_CMAP',
             'enrichR_KPM_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),

               ('MD',
            '../covid-19-pbmc_CMAP',
             'enrichR_MD_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


            #    ('degas',
            # '../covid-19-pbmc_CMAP',
            #  'enrichR_Degas_Old_CMAP_up.csv',
            #  '',
            #  '',
            #  'CMAPup-covid19'),


]

tablemap[('pbmc','CMAPdown')] = [


               ('clex1890',
            '../covid-19-pbmc_CMAP',
             'enrichR_ClustEx1940_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),

            ('clex3380',
            '../covid-19-pbmc_CMAP',
             'enrichR_ClustEx3800_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


            ('c&pd5j8',
            '../covid-19-pbmc_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),

            ('c&pd7j8',
            '../covid-19-pbmc_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


               ('kpm',
            '../covid-19-pbmc_CMAP',
             'enrichR_KPM_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),

               ('MD',
            '../covid-19-pbmc_CMAP',
             'enrichR_MD_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


               ('degas',
            '../covid-19-pbmc_CMAP',
             'enrichR_Degas_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


]

tablemap[('pbmc','CMAPupdown')] = [

            ('clex1890',
            '../covid-19-pbmc_CMAP',
             'enrichR_ClustEx1940_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

            ('clex3380',
            '../covid-19-pbmc_CMAP',
             'enrichR_ClustEx3800_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),


            ('c&pd5j8',
            '../covid-19-pbmc_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

            ('c&pd7j8',
            '../covid-19-pbmc_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),


               ('kpm',
            '../covid-19-pbmc_CMAP',
             'enrichR_KPM_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

               ('MD',
            '../covid-19-pbmc_CMAP',
             'enrichR_MD_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),


               ('degas',
            '../covid-19-pbmc_CMAP',
             'enrichR_Degas_SingleModule_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

]


####################################################################
#
#
#
# CMAP  data - covid19 cells  data




tablemap[('cells','CMAPup')] = [

               ('clex420',
            '../covid-19-covid-cells_CMAP',
             'enrichR_ClustEx420_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),

            ('clex900',
            '../covid-19-covid-cells_CMAP',
             'enrichR_ClustEx900_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


            ('c&pd5j8',
            '../covid-19-covid-cells_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),

            ('c&pd7j8',
            '../covid-19-covid-cells_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


               ('kpm',
            '../covid-19-covid-cells_CMAP',
             'enrichR_KPM_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),

               ('MD',
            '../covid-19-covid-cells_CMAP',
             'enrichR_MD_Old_CMAP_up.csv',
             '',
             '',
             'CMAPup-covid19'),


##               ('degas',
##            '../covid-19-covid-cells_CMAP',
##             'enrichR_Degas_Old_CMAP_up.csv',
##             '',
##             '',
##             'CMAPup-covid19'),


]

tablemap[('cells','CMAPdown')] = [


               ('clex420',
            '../covid-19-covid-cells_CMAP',
             'enrichR_ClustEx420_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),

            ('clex900',
            '../covid-19-covid-cells_CMAP',
             'enrichR_ClustEx900_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


            ('c&pd5j8',
            '../covid-19-covid-cells_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),

            ('c&pd7j8',
            '../covid-19-covid-cells_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


               ('kpm',
            '../covid-19-covid-cells_CMAP',
             'enrichR_KPM_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),

               ('MD',
            '../covid-19-covid-cells_CMAP',
             'enrichR_MD_Old_CMAP_down.csv',
             '',
             '',
             'CMAPdown-covid19'),


##               ('degas',
##            '../covid-19-covid-cells_CMAP',
##             'enrichR_Degas_Old_CMAP_down.csv',
##             '',
##             '',
##             'CMAPdown-covid19'),


]

tablemap[('cells','CMAPupdown')] = [

            ('clex420',
            '../covid-19-covid-cells_CMAP',
             'enrichR_ClustEx420_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

            ('clex900',
            '../covid-19-covid-cells_CMAP',
             'enrichR_ClustEx900_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),


            ('c&pd5j8',
            '../covid-19-covid-cells_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

            ('c&pd7j8',
            '../covid-19-covid-cells_CMAP',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),


               ('kpm',
            '../covid-19-covid-cells_CMAP',
             'enrichR_KPM_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),

               ('MD',
            '../covid-19-covid-cells_CMAP',
             'enrichR_MD_Old_CMAP_down.csv',
             '',
             '',
             'CMAPupdown-covid19'),


##               ('degas',
##            '../covid-19-covid-cells_CMAP',
##             'enrichR_Degas_Old_CMAP_down.csv',
##             '',
##             '',
##             'CMAPupdown-covid19'),

]



####################################################################
#
#
#
# L1000  data - Prostate cancer  data

tablemap[('prc','L1000up')] = [
               ('clex',
            '../Prostate_cancer_L1000',
             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000up'),

            ('c&pd7j8',
            '../Prostate_cancer_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000up'),

               ('kpm',
            '../Prostate_cancer_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000up'),

               ('MD',
            '../Prostate_cancer_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000up'),
               
               

]

tablemap[('prc','L1000down')] = [
               ('clex',
            '../Prostate_cancer_L1000',
             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_down_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000down'),

            ('c&pd7j8',
            '../Prostate_cancer_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000down'),


            ('kpm',
            '../Prostate_cancer_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000down'),

               ('MD',
            '../Prostate_cancer_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_down_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000down'),
               

               ('degas',
            '../Prostate_cancer_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_down_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000down'),


]

tablemap[('prc','L1000updown')] = [
               ('clex',
            '../Prostate_cancer_L1000',
             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_down_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000updown'),

            ('c&pd7j8',
            '../Prostate_cancer_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000updown'),

            ('kpm',
            '../Prostate_cancer_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000updown'),

               ('MD',
            '../Prostate_cancer_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up_perc.csv',
#           'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_up_perc.csv',
#             'enrichR_ClustEx3000_LINCS_L1000_Chem_Pert_updown_perc.csv',
             '',
             '',
             'L1000updown'),
               


]

####################################################################
#
#
#
# L1000  data - colorectal cancer  data



tablemap[('crc','L1000up')] = [
               ('clex',
            '../Colorectal_cancer_L1000',
             'enrichR_ClustEx3800_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),

            ('c&pd7j8',
            '../Colorectal_cancer_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),

               ('kpm',
            '../Colorectal_cancer_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),

               ('MD',
            '../Colorectal_cancer_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),
               
               

]

tablemap[('crc','L1000down')] = [
               ('clex',
            '../Colorectal_cancer_L1000',
             'enrichR_ClustEx3800_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),

            ('c&pd7j8',
            '../Colorectal_cancer_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),


            ('kpm',
            '../Colorectal_cancer_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),

               ('MD',
            '../Colorectal_cancer_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),
               

               ('degas',
            '../Colorectal_cancer_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),


]

tablemap[('crc','L1000updown')] = [
               ('clex',
            '../Colorectal_cancer_L1000',
             'enrichR_ClustEx3800_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000updown'),

            ('c&pd7j8',
            '../Colorectal_cancer_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000updown'),

            ('kpm',
            '../Colorectal_cancer_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000updown'),

               ('MD',
            '../Colorectal_cancer_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000updown'),
               


]




####################################################################
#
#
#
# L1000  data - asthma  data



tablemap[('asth','L1000up')] = [
               ('clex',
            '../Asthma_L1000',
             'enrichR_ClustEx1300_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),

            ('c&pd5j8',
            '../Asthma_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),

               ('kpm',
            '../Asthma_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),

               ('MD',
            '../Asthma_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),
               
               

]

tablemap[('asth','L1000down')] = [
               ('clex',
            '../Asthma_L1000',
             'enrichR_ClustEx1300_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),

            ('c&pd5j8',
            '../Asthma_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),


            ('kpm',
            '../Asthma_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),

               ('MD',
            '../Asthma_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),
               

 
]

tablemap[('asth','L1000updown')] = [
               ('clex',
            '../Asthma_L1000',
             'enrichR_ClustEx1300_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000updown'),

            ('c&pd5j8',
            '../Asthma_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000updown'),

            ('kpm',
            '../Asthma_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000updown'),

               ('MD',
            '../Asthma_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000updown'),
               


]


####################################################################
#
#
#
# L1000  data - arthritis  data




tablemap[('arth','L1000up')] = [
               ('clex',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_ClustEx500_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),

            ('c&pd5j8',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),

               ('kpm',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),

               ('MD',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),
               

               ('degas',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000up'),
              

]

tablemap[('arth','L1000down')] = [
               ('clex',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_ClustEx500_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),

            ('c&pd5j8',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),


            ('kpm',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),

               ('MD',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_MD_2000_0LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),
               

               ('degas',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000down'),

 
]

tablemap[('arth','L1000updown')] = [
               ('clex',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_ClustEx500_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000updown'),

            ('c&pd5j8',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down_perc.csv',
             '',
             '',
             'L1000updown'),

            ('kpm',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000updown'),

               ('MD',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000updown'),
               

               ('degas',
            '../Rheumatoid_arthritis_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_up_perc.csv',
             '',
             '',
             'L1000updown'),


]



####################################################################
#
#
#
# L1000  data - balf  data




tablemap[('balf','L1000up')] = [
    
               ('clex1890',
            '../covid-19-balf_L1000',
             'enrichR_ClustEx1890_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),

            ('clex3380',
            '../covid-19-balf_L1000',
             'enrichR_ClustEx3380_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),


            ('c&pd5j8',
            '../covid-19-balf_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up'),

            ('c&pd7j8',
            '../covid-19-balf_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),


               ('kpm',
            '../covid-19-balf_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),

               ('MD',
            '../covid-19-balf_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),
               

               ('degas',
            '../covid-19-balf_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),
              

]

tablemap[('balf','L1000down')] = [

    
               ('clex1890',
            '../covid-19-balf_L1000',
             'enrichR_ClustEx1890_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),

            ('clex3380',
            '../covid-19-balf_L1000',
             'enrichR_ClustEx3380_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),


            ('c&pd5j8',
            '../covid-19-balf_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),

            ('c&pd7j8',
            '../covid-19-balf_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),


               ('kpm',
            '../covid-19-balf_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),

               ('MD',
            '../covid-19-balf_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),
               

               ('degas',
            '../covid-19-balf_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),
              
 
]

tablemap[('balf','L1000updown')] = [
    
            ('clex1890',
            '../covid-19-balf_L1000',
             'enrichR_ClustEx1890_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

            ('clex3380',
            '../covid-19-balf_L1000',
             'enrichR_ClustEx3380_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),


            ('c&pd5j8',
            '../covid-19-balf_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

            ('c&pd7j8',
            '../covid-19-balf_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),


               ('kpm',
            '../covid-19-balf_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

               ('MD',
            '../covid-19-balf_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),
               

               ('degas',
            '../covid-19-balf_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),
              
]


####################################################################
#
#
#
# L1000  data - pbmc  data




tablemap[('pbmc','L1000up')] = [

               ('clex1890',
            '../covid-19-pbmc_L1000',
             'enrichR_ClustEx1940_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),

            ('clex3380',
            '../covid-19-pbmc_L1000',
             'enrichR_ClustEx3800_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),


            ('c&pd5j8',
            '../covid-19-pbmc_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up'),

            ('c&pd7j8',
            '../covid-19-pbmc_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),


               ('kpm',
            '../covid-19-pbmc_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),

               ('MD',
            '../covid-19-pbmc_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),


               ('degas',
            '../covid-19-pbmc_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),


]

tablemap[('pbmc','L1000down')] = [


               ('clex1890',
            '../covid-19-pbmc_L1000',
             'enrichR_ClustEx1940_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),

            ('clex3380',
            '../covid-19-pbmc_L1000',
             'enrichR_ClustEx3800_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),


            ('c&pd5j8',
            '../covid-19-pbmc_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),

            ('c&pd7j8',
            '../covid-19-pbmc_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),


               ('kpm',
            '../covid-19-pbmc_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),

               ('MD',
            '../covid-19-pbmc_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),


               ('degas',
            '../covid-19-pbmc_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),


]

tablemap[('pbmc','L1000updown')] = [

            ('clex1890',
            '../covid-19-pbmc_L1000',
             'enrichR_ClustEx1940_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

            ('clex3380',
            '../covid-19-pbmc_L1000',
             'enrichR_ClustEx3800_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),


            ('c&pd5j8',
            '../covid-19-pbmc_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

            ('c&pd7j8',
            '../covid-19-pbmc_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),


               ('kpm',
            '../covid-19-pbmc_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

               ('MD',
            '../covid-19-pbmc_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),


               ('degas',
            '../covid-19-pbmc_L1000',
             'enrichR_Degas_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

]


####################################################################
#
#
#
# L1000  data - covid19 cells  data




tablemap[('cells','L1000up')] = [

               ('clex1890',
            '../covid-19-covid-cells_L1000',
             'enrichR_ClustEx420_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),

            ('clex3380',
            '../covid-19-covid-cells_L1000',
             'enrichR_ClustEx900_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),


            ('c&pd5j8',
            '../covid-19-covid-cells_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up'),

            ('c&pd7j8',
            '../covid-19-covid-cells_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),


               ('kpm',
            '../covid-19-covid-cells_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),

               ('MD',
            '../covid-19-covid-cells_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_up.csv',
             '',
             '',
             'L1000up-covid19'),


##               ('degas',
##            '../covid-19-covid-cells_L1000',
##             'enrichR_Degas_LINCS_L1000_Chem_Pert_up.csv',
##             '',
##             '',
##             'L1000up-covid19'),


]

tablemap[('cells','L1000down')] = [


               ('clex1890',
            '../covid-19-covid-cells_L1000',
             'enrichR_ClustEx420_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),

            ('clex3380',
            '../covid-19-covid-cells_L1000',
             'enrichR_ClustEx900_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),


            ('c&pd5j8',
            '../covid-19-covid-cells_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),

            ('c&pd7j8',
            '../covid-19-covid-cells_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),


               ('kpm',
            '../covid-19-covid-cells_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),

               ('MD',
            '../covid-19-covid-cells_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000down-covid19'),


##               ('degas',
##            '../covid-19-covid-cells_L1000',
##             'enrichR_Degas_LINCS_L1000_Chem_Pert_down.csv',
##             '',
##             '',
##             'L1000down-covid19'),


]

tablemap[('cells','L1000updown')] = [

            ('clex1890',
            '../covid-19-covid-cells_L1000',
             'enrichR_ClustEx420_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

            ('clex3380',
            '../covid-19-covid-cells_L1000',
             'enrichR_ClustEx900_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),


            ('c&pd5j8',
            '../covid-19-covid-cells_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

            ('c&pd7j8',
            '../covid-19-covid-cells_L1000',
             'enrichR_Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),


               ('kpm',
            '../covid-19-covid-cells_L1000',
             'enrichR_KPM_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),

               ('MD',
            '../covid-19-covid-cells_L1000',
             'enrichR_MD_LINCS_L1000_Chem_Pert_down.csv',
             '',
             '',
             'L1000updown-covid19'),


##               ('degas',
##            '../covid-19-covid-cells_L1000',
##             'enrichR_Degas_LINCS_L1000_Chem_Pert_down.csv',
##             '',
##             '',
##             'L1000updown-covid19'),

]
