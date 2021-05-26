###### set your working directory ######
library(limma)
library(enrichR)
library(readr)

source('functions.R')

#---------------------------------------------------------------------------------
#                               MAIN
#----------------------------------------------------------------------------------


background <- read.table('../1-input_files/symbol_entrezID_table.txt', header = T)

database <- c('LINCS_L1000_Chem_Pert_up','LINCS_L1000_Chem_Pert_down','Old_CMAP_down','Old_CMAP_up',
              'DrugMatrix', 'Drug_Perturbations_from_GEO_2014')

output <- '../3-Drugs/'
create_directories(output)

####-------------------------------------------------------------------------------
#                            PBMC
#----------------------------------------------------------------------------------
input <- '../1-input_files/active_subnetworks/COVID-19/PBMC/'

# Core&Peel
file <- 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_PBMC.txt'
enrichr_analysis(input,file,'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest','covid-19-pbmc',database,background,output = output)

# Core&Peel
file <- 'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_PBMC.txt'
enrichr_analysis(input,file,'Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest','covid-19-pbmc',database,background,output = output)

# MD
file <- 'MD_PBMC.txt'
enrichr_analysis(input,file,'MD','covid-19-pbmc',database,background,output = output)

# ClustEx
file <- 'ClustEx3800_PBMC.txt'
enrichr_analysis(input,file,'ClustEx3800','covid-19-pbmc',database,background,output = output)

# ClustEx
file <- 'ClustEx1940_PBMC.txt'
enrichr_analysis(input,file,'ClustEx1940','covid-19-pbmc',database,background,output = output)

# KPM
file <- 'KPM_PBMC.txt'
enrichr_analysis(input,file,'KPM','covid-19-pbmc',database,background,output = output)

# Degas
file <- 'Degas_PBMC.txt'
enrichr_analysis(input,file,'Degas','covid-19-pbmc',database,background,output = output)

################################### Modulation drug ########################

if(dir.exists('../4-MultipleModules_output') == FALSE){
  dir.create('../4-MultipleModules_output')
}

# 1) perform the enrich analysis on the single modules
# Core&Peel-d0.5-j0.8
f <- '../1-input_files/active_subnetworks/covid-19-pbmc/MultipleModules/Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_MultipleModules.txt'
for(d in database){
  enrichr_analysis_multipleModules(f,'covid-19-pbmc','Core&Peel-d0.5-j0.8',d)
}

p <- '../4-MultipleModules_output/covid-19-pbmc/Core&Peel-d0.5-j0.8/L1000'
get_merge_enrichr('L1000',p)
p <- '../4-MultipleModules_output/covid-19-pbmc/Core&Peel-d0.5-j0.8/CMAP'
get_merge_enrichr('CMAP',p)

# Core&Peel-d0.7-j0.8
f <- '../1-input_files/active_subnetworks/covid-19-pbmc/MultipleModules/Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8-marklargest_MultipleModules.txt'
for(d in database){
  enrichr_analysis_multipleModules(f,'covid-19-pbmc','Core&Peel-d0.7-j0.8',d)
}

p <- '../4-MultipleModules_output/covid-19-pbmc/Core&Peel-d0.7-j0.8/L1000'
get_merge_enrichr('L1000',p)
p <- '../4-MultipleModules_output/covid-19-pbmc/Core&Peel-d0.7-j0.8/CMAP'
get_merge_enrichr('CMAP',p)

# MD
f <- '../1-input_files/active_subnetworks/covid-19-pbmc/MultipleModules/MD_MultipleModules_pbmc.txt'
for(d in database){
  enrichr_analysis_multipleModules(f,'covid-19-pbmc','MD',d)
}
p <- '../4-MultipleModules_output/covid-19-pbmc/MD/L1000'
get_merge_enrichr('L1000',p)
p <- '.../4-MultipleModules_output/covid-19-pbmc/MD/CMAP'
get_merge_enrichr('CMAP',p)

##### 2) get table without filtering #########

DEG <- read.csv('../1-input_files/DEGs/COVID-19/PBMC/DE.tsv', sep = '\t')
up <- DEG$Name[which(DEG$Tag == 'Up')]
down <- DEG$Name[which(DEG$Tag == 'Down')]

database1 <- c('L1000','CMAP','drugperturbationGEO', 'drugmatrix')

# Core&Peel
for(d in database1){
  enrichr <- read_enrichr('../3-Drugs/','Core&Peel','covid-19-pbmc',d, param = '-d0.5-f1-j0.8')
  path <- '../1-input_files/active_subnetworks/covid-19-pbmc/MultipleModules/'
  table <- get_modulation_table(enrichr,'Core&Peel',path,up,down)
  path_input <-'../4-MultipleModules_output/covid-19-pbmc/'
  path_output <- '../3-Drugs/Drug-modulation-data/covid19-pbmc-cp'
  table1 <- add_pvalue(path_input,'Core&Peel',d,table,path_output,'covid-19-pbmc',param = '-d0.5-f1-j0.8')
  if(d == 'L1000'){
    d1 <- 'L1000'
  }
  if(d == 'CMAP'){
    d1 <- 'CMAP'
  }
  if(d == 'drugmatrix'){
    d1 <- 'DrugMatrix'
  }
  if(d == 'drugperturbationGEO'){
    d1 <- 'GEO'
  }
  table1 <- read.csv(paste0(path_output,'/Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8','_','covid-19-pbmc','_',d1,'_noFiltering.csv'))
  get_modulation_filter(table1,d,'Core&Peel',path_output,'covid-19-pbmc',param = '-d0.5-f1-j0.8')
}

# Core&Peel
for(d in database1){
  enrichr <- read_enrichr('../3-Drugs/','Core&Peel','covid-19-pbmc',d, param = '-d0.7-f1-j0.8')
  path <- '../1-input_files/active_subnetworks/covid-19-pbmc/MultipleModules/'
  table <- get_modulation_table(enrichr,'Core&Peel',path,up,down)
  path_input <-'../4-MultipleModules_output/covid-19-pbmc/'
  path_output <- '../3-Drugs/Drug-modulation-data/covid19-pbmc-cp'
  table1 <- add_pvalue(path_input,'Core&Peel',d,table,path_output,'covid-19-pbmc',param = '-d0.7-f1-j0.8')
  if(d == 'L1000'){
    d1 <- 'L1000'
  }
  if(d == 'CMAP'){
    d1 <- 'CMAP'
  }
  if(d == 'drugmatrix'){
    d1 <- 'DrugMatrix'
  }
  if(d == 'drugperturbationGEO'){
    d1 <- 'GEO'
  }
  table1 <- read.csv(paste0(path_output,'/Core&Peel-coexpr025marta-r1-nl10-d0.7-f1-j0.8','_','covid-19-pbmc','_',d1,'_noFiltering.csv'))
  get_modulation_filter(table1,d,'Core&Peel',path_output,'covid-19-pbmc',param = '-d0.7-f1-j0.8')
}

# MD
for(d in database1){
  enrichr <- read_enrichr('../3-Drugs/','MD','covid-19-pbmc',d)
  path <- '../1-input_files/active_subnetworks/covid-19-pbmc/MultipleModules/'
  table <- get_modulation_table(enrichr,'MD',path,up,down)
  path_input <-'../4-MultipleModules_output/covid-19-pbmc/'
  path_output <- '../3-Drugs/Drug-modulation-data/covid19-pbmc-MD'
  table1 <- add_pvalue(path_input,'MD',d,table,path_output,'covid-19-pbmc')
  if(d == 'L1000'){
    d1 <- 'L1000'
  }
  if(d == 'CMAP'){
    d1 <- 'CMAP'
  }
  if(d == 'drugmatrix'){
    d1 <- 'DrugMatrix'
  }
  if(d == 'drugperturbationGEO'){
    d1 <- 'GEO'
  }
  table1 <- read.csv(paste0(path_output,'/MD','_','covid-19-pbmc','_',d1,'_noFiltering.csv'))
  get_modulation_filter(table1,d,'MD',path_output,'covid-19-pbmc')
}

