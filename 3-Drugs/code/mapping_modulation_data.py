# This file holds the main mapping to store the directory,filenames of data sets.
# Indexed by algname, GEO/DM and fiter/nofilter

################################################################
# covid19 pbmc data

modulation_data = {}

# cp

modulation_data[('pbmc', 'cpd05j08', 'GEO', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-cp' , 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-pbmc_GEO.csv')

modulation_data[('pbmc', 'cpd05j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-pbmc_GEO_noFiltering.csv',)

modulation_data[('pbmc', 'cpd05j08', 'DM', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-pbmc_DrugMatrix.csv')

modulation_data[('pbmc', 'cpd05j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-pbmc_DrugMatrix_noFiltering.csv')


modulation_data[('pbmc', 'cpd05j08', 'CMAP', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-pbmc_CMAP.csv')

modulation_data[('pbmc', 'cpd05j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-pbmc_CMAP_noFiltering.csv')


modulation_data[('pbmc', 'cpd05j08', 'L1000', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-pbmc_L1000.csv')

modulation_data[('pbmc', 'cpd05j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-pbmc_L1000_noFiltering.csv')



modulation_data[('pbmc', 'cpd07j08', 'GEO', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-pbmc_GEO.csv')

modulation_data[('pbmc', 'cpd07j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-pbmc_GEO_noFiltering.csv')

modulation_data[('pbmc', 'cpd07j08', 'DM', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-pbmc_DrugMatrix.csv')

modulation_data[('pbmc', 'cpd07j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-pbmc_DrugMatrix_noFiltering.csv')


modulation_data[('pbmc', 'cpd07j08', 'CMAP', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-pbmc_CMAP.csv')

modulation_data[('pbmc', 'cpd07j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-pbmc_CMAP_noFiltering.csv')


modulation_data[('pbmc', 'cpd07j08', 'L1000', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-pbmc_L1000.csv')

modulation_data[('pbmc', 'cpd07j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-pbmc_L1000_noFiltering.csv')


# MD

modulation_data[('pbmc', 'MD', 'GEO', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-MD', 'MD_covid-19-pbmc_GEO.csv')

modulation_data[('pbmc', 'MD', 'GEO', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-MD',  'MD_covid-19-pbmc_GEO_noFiltering.csv')

modulation_data[('pbmc', 'MD', 'DM', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-MD', 'MD_covid-19-pbmc_DrugMatrix.csv')

modulation_data[('pbmc', 'MD', 'DM', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-MD', 'MD_covid-19-pbmc_DrugMatrix_noFiltering.csv')

modulation_data[('pbmc', 'MD', 'CMAP', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-MD', 'MD_covid-19-pbmc_CMAP.csv')

modulation_data[('pbmc', 'MD', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-MD',  'MD_covid-19-pbmc_CMAP_noFiltering.csv')

modulation_data[('pbmc', 'MD', 'L1000', 'filter')] = ('../Drug-modulation-data/covid19-pbmc-MD', 'MD_covid-19-pbmc_L1000.csv')

modulation_data[('pbmc', 'MD', 'L1000', 'nofilter')] = ('../Drug-modulation-data/covid19-pbmc-MD', 'MD_covid-19-pbmc_L1000_noFiltering.csv')




################################################################
# covid19 covid-19-balf data

modulation_data[('covid-19-balf', 'cpd05j08', 'GEO', 'filter')] = ( '../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-balf_GEO.csv')

modulation_data[('covid-19-balf', 'cpd05j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-balf_GEO_noFiltering.csv')

modulation_data[('covid-19-balf', 'cpd05j08', 'DM', 'filter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-balf_DrugMatrix.csv')

modulation_data[('covid-19-balf', 'cpd05j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/covid19-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-balf_DrugMatrix_noFiltering.csv')


modulation_data[('covid-19-balf', 'cpd05j08', 'CMAP', 'filter')] = ( '../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-balf_CMAP.csv')

modulation_data[('covid-19-balf', 'cpd05j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-balf_CMAP_noFiltering.csv')

modulation_data[('covid-19-balf', 'cpd05j08', 'L1000', 'filter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-balf_L1000.csv')

modulation_data[('covid-19-balf', 'cpd05j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-balf_L1000_noFiltering.csv')


modulation_data[('covid-19-balf', 'cpd07j08', 'GEO', 'filter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-balf_GEO.csv')

modulation_data[('covid-19-balf', 'cpd07j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-balf_GEO_noFiltering.csv')

modulation_data[('covid-19-balf', 'cpd07j08', 'DM', 'filter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-balf_DrugMatrix.csv')

modulation_data[('covid-19-balf', 'cpd07j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-balf_DrugMatrix_noFiltering.csv')


modulation_data[('covid-19-balf', 'cpd07j08', 'CMAP', 'filter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-balf_CMAP.csv')

modulation_data[('covid-19-balf', 'cpd07j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-balf_CMAP_noFiltering.csv')

modulation_data[('covid-19-balf', 'cpd07j08', 'L1000', 'filter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-balf_L1000.csv')

modulation_data[('covid-19-balf', 'cpd07j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-balf_L1000_noFiltering.csv')


# MD

modulation_data[('covid-19-balf', 'MD', 'GEO', 'filter')] = ('../Drug-modulation-data/covid19-balf-MD', 'MD_covid-19-balf_GEO.csv')

modulation_data[('covid-19-balf', 'MD', 'GEO', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-MD', 'MD_covid-19-balf_GEO_noFiltering.csv')

modulation_data[('covid-19-balf', 'MD', 'DM', 'filter')] = ('../Drug-modulation-data/covid19-balf-MD', 'MD_covid-19-balf_DrugMatrix.csv')

modulation_data[('covid-19-balf', 'MD', 'DM', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-MD', 'MD_covid-19-balf_DrugMatrix_noFiltering.csv')


modulation_data[('covid-19-balf', 'MD', 'CMAP', 'filter')] = ('../Drug-modulation-data/covid19-balf-MD', 'MD_covid-19-balf_CMAP.csv')

modulation_data[('covid-19-balf', 'MD', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-MD', 'MD_covid-19-balf_CMAP_noFiltering.csv')

modulation_data[('covid-19-balf', 'MD', 'L1000', 'filter')] = ('../Drug-modulation-data/covid19-balf-MD', 'MD_covid-19-balf_L1000.csv')

modulation_data[('covid-19-balf', 'MD', 'L1000', 'nofilter')] = ('../Drug-modulation-data/covid19-balf-MD', 'MD_covid-19-balf_L1000_noFiltering.csv')



################################################################
# covid19 cell data

modulation_data[('cells', 'cpd05j08', 'GEO', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-covid-cells_GEO.csv')

modulation_data[('cells', 'cpd05j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-covid-cells_GEO_noFiltering.csv')

modulation_data[('cells', 'cpd05j08', 'DM', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-covid-cells_DrugMatrix.csv')

modulation_data[('cells', 'cpd05j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-covid-cells_DrugMatrix_noFiltering.csv' )


modulation_data[('cells', 'cpd05j08', 'CMAP', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-covid-cells_CMAP.csv')

modulation_data[('cells', 'cpd05j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-covid-cells_CMAP_noFiltering.csv')

modulation_data[('cells', 'cpd05j08', 'L1000', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-covid-cells_L1000.csv')

modulation_data[('cells', 'cpd05j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_covid-19-covid-cells_L1000_noFiltering.csv' )





modulation_data[('cells', 'cpd07j08', 'GEO', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-covid-cells_GEO.csv')

modulation_data[('cells', 'cpd07j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-covid-cells_GEO_noFiltering.csv')

modulation_data[('cells', 'cpd07j08', 'DM', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-covid-cells_DrugMatrix.csv')

modulation_data[('cells', 'cpd07j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-covid-cells_DrugMatrix_noFiltering.csv')


modulation_data[('cells', 'cpd07j08', 'CMAP', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-covid-cells_CMAP.csv')

modulation_data[('cells', 'cpd07j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-covid-cells_CMAP_noFiltering.csv')

modulation_data[('cells', 'cpd07j08', 'L1000', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-covid-cells_L1000.csv')

modulation_data[('cells', 'cpd07j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_covid-19-covid-cells_L1000_noFiltering.csv' )


# MD

modulation_data[('cells', 'MD', 'GEO', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-MD','MD_covid-19-covid-cells_GEO.csv')

modulation_data[('cells', 'MD', 'GEO', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-MD', 'MD_covid-19-covid-cells_GEO_noFiltering.csv')

modulation_data[('cells', 'MD', 'DM', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-MD', 'MD_covid-19-covid-cells_DrugMatrix.csv')

modulation_data[('cells', 'MD', 'DM', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-MD', 'MD_covid-19-covid-cells_DrugMatrix_noFiltering.csv')

modulation_data[('cells', 'MD', 'CMAP', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-MD','MD_covid-19-covid-cells_CMAP.csv')

modulation_data[('cells', 'MD', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-MD', 'MD_covid-19-covid-cells_CMAP_noFiltering.csv')

modulation_data[('cells', 'MD', 'L1000', 'filter')] = ('../Drug-modulation-data/covid19-covidcells-MD', 'MD_covid-19-covid-cells_L1000.csv')

modulation_data[('cells', 'MD', 'L1000', 'nofilter')] = ('../Drug-modulation-data/covid19-covidcells-MD', 'MD_covid-19-covid-cells_L1000_noFiltering.csv')


################################################################


################################################################
# asthma data

#c&p

modulation_data[('asth', 'cpd05j08', 'GEO', 'filter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_GEO.csv')

modulation_data[('asth', 'cpd05j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_GEO_noFiltering.csv')

modulation_data[('asth', 'cpd05j08', 'DM', 'filter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_DrugMatrix.csv')

modulation_data[('asth', 'cpd05j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_DrugMatrix_noFiltering.csv' )


modulation_data[('asth', 'cpd05j08', 'DM2', 'filter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_DrugMatrix2.csv')

modulation_data[('asth', 'cpd05j08', 'DM2', 'nofilter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_DrugMatrix2_noFiltering.csv' )


modulation_data[('asth', 'cpd05j08', 'CMAP', 'filter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_CMAP.csv', '","')

modulation_data[('asth', 'cpd05j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_CMAP_noFiltering.csv', '","' )

modulation_data[('asth', 'cpd05j08', 'L1000', 'filter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_L1000.csv', '","')

modulation_data[('asth', 'cpd05j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/Asthma-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Asthma_L1000_noFiltering.csv',  '","' )





# MD

modulation_data[('asth', 'MD', 'GEO', 'filter')] = ('../Drug-modulation-data/Asthma-MD','MD_Asthma_GEO.csv')

modulation_data[('asth', 'MD', 'GEO', 'nofilter')] = ('../Drug-modulation-data/Asthma-MD', 'MD_Asthma_GEO_noFiltering.csv')

modulation_data[('asth', 'MD', 'DM', 'filter')] = ('../Drug-modulation-data/Asthma-MD', 'MD_Asthma_DrugMatrix.csv')

modulation_data[('asth', 'MD', 'DM', 'nofilter')] = ('../Drug-modulation-data/Asthma-MD', 'MD_Asthma_DrugMatrix_noFiltering.csv')

modulation_data[('asth', 'MD', 'CMAP', 'filter')] = ('../Drug-modulation-data/Asthma-MD','MD_Asthma_CMAP.csv')

modulation_data[('asth', 'MD', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/Asthma-MD', 'MD_Asthma_CMAP_noFiltering.csv')

modulation_data[('asth', 'MD', 'L1000', 'filter')] = ('../Drug-modulation-data/Asthma-MD', 'MD_Asthma_L1000.csv')

modulation_data[('asth', 'MD', 'L1000', 'nofilter')] = ('../Drug-modulation-data/Asthma-MD', 'MD_Asthma_L1000_noFiltering.csv')



################################################################
# prostate cancer data

#c&p

modulation_data[('prc', 'cpd07j08', 'GEO', 'filter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Prostate_Cancer_GEO.csv', '/t')

modulation_data[('prc', 'cpd07j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Prostate_Cancer_GEO_noFiltering.csv')


modulation_data[('prc', 'cpd07j06', 'DM', 'filter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.6_Prostate_Cancer_DrugMatrix.csv')

modulation_data[('prc', 'cpd07j06', 'DM', 'nofilter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.6_Prostate_Cancer_DrugMatrix_noFiltering.csv')

modulation_data[('prc', 'cpd05j08', 'DM', 'filter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Prostate_Cancer_DrugMatrix.csv')

modulation_data[('prc', 'cpd05j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Prostate_Cancer_DrugMatrix_noFiltering.csv')


modulation_data[('prc', 'cpd07j08', 'CMAP', 'filter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Prostate_Cancer_CMAP.csv')

modulation_data[('prc', 'cpd07j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Prostate_Cancer_CMAP_noFiltering.csv')

modulation_data[('prc', 'cpd07j08', 'L1000', 'filter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Prostate_Cancer_L1000.csv')

modulation_data[('prc', 'cpd07j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/prostate-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Prostate_Cancer_L1000_noFiltering.csv')

# MD

modulation_data[('prc', 'MD', 'GEO', 'filter')] = ('../Drug-modulation-data/prostate-cancer-MD','MD_Prostate_Cancer_GEO.csv')

modulation_data[('prc', 'MD', 'GEO', 'nofilter')] = ('../Drug-modulation-data/prostate-cancer-MD', 'MD_Prostate_Cancer_GEO_noFiltering.csv')

modulation_data[('prc', 'MD', 'CMAP', 'filter')] = ('../Drug-modulation-data/prostate-cancer-MD','MD_Prostate_Cancer_CMAP.csv')

modulation_data[('prc', 'MD', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/prostate-cancer-MD', 'MD_Prostate_Cancer_CMAP_noFiltering.csv')

modulation_data[('prc', 'MD', 'L1000', 'filter')] = ('../Drug-modulation-data/prostate-cancer-MD','MD_Prostate_Cancer_L1000.csv')

modulation_data[('prc', 'MD', 'L1000', 'nofilter')] = ('../Drug-modulation-data/prostate-cancer-MD', 'MD_Prostate_Cancer_L1000_noFiltering.csv')


################################################################
# colorectal cancer data

#c&p

modulation_data[('crc', 'cpd07j08', 'GEO', 'filter')] = ('../Drug-modulation-data/colorectal-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Colorectal_cancer_GEO.csv')

modulation_data[('crc', 'cpd07j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/colorectal-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Colorectal_cancer_GEO_noFiltering.csv')

modulation_data[('crc', 'cpd07j08', 'DM', 'filter')] = ('../Drug-modulation-data/colorectal-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Colorectal_cancer_DrugMatrix.csv')

modulation_data[('crc', 'cpd07j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/colorectal-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Colorectal_cancer_DrugMatrix_noFiltering.csv')


modulation_data[('crc', 'cpd07j08', 'CMAP', 'filter')] = ('../Drug-modulation-data/colorectal-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Colorectal_cancer_CMAP.csv')

modulation_data[('crc', 'cpd07j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/colorectal-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Colorectal_cancer_CMAP_noFiltering.csv')

modulation_data[('crc', 'cpd07j08', 'L1000', 'filter')] = ('../Drug-modulation-data/colorectal-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Colorectal_cancer_L1000.csv')

modulation_data[('crc', 'cpd07j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/colorectal-cancer-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8_Colorectal_cancer_L1000_noFiltering.csv')


# MD

modulation_data[('crc', 'MD', 'GEO', 'filter')] = ('../Drug-modulation-data/colorectal-cancer-MD','MD_Colorectal_cancer_GEO.csv')

modulation_data[('crc', 'MD', 'GEO', 'nofilter')] = ('../Drug-modulation-data/colorectal-cancer-MD', 'MD_Colorectal_cancer_GEO_noFiltering.csv')

modulation_data[('crc', 'MD', 'DM', 'filter')] = ('../Drug-modulation-data/colorectal-cancer-MD','MD_Colorectal_cancer_DrugMatrix.csv')

modulation_data[('crc', 'MD', 'DM', 'nofilter')] = ('../Drug-modulation-data/colorectal-cancer-MD', 'MD_Colorectal_cancer_DrugMatrix_noFiltering.csv')

modulation_data[('crc', 'MD', 'CMAP', 'filter')] = ('../Drug-modulation-data/colorectal-cancer-MD','MD_Colorectal_cancer_CMAP.csv')

modulation_data[('crc', 'MD', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/colorectal-cancer-MD', 'MD_Colorectal_cancer_CMAP_noFiltering.csv')

modulation_data[('crc', 'MD', 'L1000', 'filter')] = ('../Drug-modulation-data/colorectal-cancer-MD','MD_Colorectal_cancer_L1000.csv')

modulation_data[('crc', 'MD', 'L1000', 'nofilter')] = ('../Drug-modulation-data/colorectal-cancer-MD', 'MD_Colorectal_cancer_L1000_noFiltering.csv')



################################################################
# Rheumatoid arthritis  data

#cp

modulation_data[('arth', 'cpd05j08', 'GEO', 'filter')] = ('../Drug-modulation-data/Arthritis-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Rheumatoid_arthritis_GEO.csv')

modulation_data[('arth', 'cpd05j08', 'GEO', 'nofilter')] = ('../Drug-modulation-data/Arthritis-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Rheumatoid_arthritis_GEO_noFiltering.csv')

modulation_data[('arth', 'cpd05j08', 'DM', 'filter')] = ('../Drug-modulation-data/Arthritis-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Rheumatoid_arthritis_DrugMatrix.csv')

modulation_data[('arth', 'cpd05j08', 'DM', 'nofilter')] = ('../Drug-modulation-data/Arthritis-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Rheumatoid_arthritis_DrugMatrix_noFiltering.csv' )

modulation_data[('arth', 'cpd05j08', 'CMAP', 'filter')] = ('../Drug-modulation-data/Arthritis-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Rheumatoid_arthritis_CMAP.csv')

modulation_data[('arth', 'cpd05j08', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/Arthritis-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Rheumatoid_arthritis_CMAP_noFiltering.csv' )

modulation_data[('arth', 'cpd05j08', 'L1000', 'filter')] = ('../Drug-modulation-data/Arthritis-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Rheumatoid_arthritis_L1000.csv')

modulation_data[('arth', 'cpd05j08', 'L1000', 'nofilter')] = ('../Drug-modulation-data/Arthritis-cp', 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_Rheumatoid_arthritis_L1000_noFiltering.csv' )


# MD

modulation_data[('arth', 'MD', 'GEO', 'filter')] = ('../Drug-modulation-data/Arthritis-MD','MD_Rheumatoid_arthritis_GEO.csv')

modulation_data[('arth', 'MD', 'GEO', 'nofilter')] = ('../Drug-modulation-data/Arthritis-MD', 'MD_Rheumatoid_arthritis_GEO_noFiltering.csv')

modulation_data[('arth', 'MD', 'DM', 'filter')] = ('../Drug-modulation-data/Arthritis-MD', 'MD_Rheumatoid_arthritis_DrugMatrix.csv')

modulation_data[('arth', 'MD', 'DM', 'nofilter')] = ('../Drug-modulation-data/Arthritis-MD', 'MD_Rheumatoid_arthritis_DrugMatrix_noFiltering.csv')

modulation_data[('arth', 'MD', 'CMAP', 'filter')] = ('../Drug-modulation-data/Arthritis-MD','MD_Rheumatoid_arthritis_CMAP.csv')

modulation_data[('arth', 'MD', 'CMAP', 'nofilter')] = ('../Drug-modulation-data/Arthritis-MD', 'MD_Rheumatoid_arthritis_CMAP_noFiltering.csv')

modulation_data[('arth', 'MD', 'L1000', 'filter')] = ('../Drug-modulation-data/Arthritis-MD', 'MD_Rheumatoid_arthritis_L1000.csv')

modulation_data[('arth', 'MD', 'L1000', 'nofilter')] = ('../Drug-modulation-data/Arthritis-MD', 'MD_Rheumatoid_arthritis_L1000_noFiltering.csv')





