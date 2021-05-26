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
#                           Asthma
#----------------------------------------------------------------------------------
up <- read.table('../1-input_files/DEGs/Asthma/up_genes_Asthmatic-Healthy.txt')
down <- read.table('../1-input_files/DEGs/Asthma/down_genes_Asthmatic-Healthy.txt')

input <- '../1-input_files/active_subnetworks/Asthma/'

# Core&Peel
file <- 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_Asthma.txt'
enrichr_analysis(input,file,'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest','Asthma',
                 database,background,up,down,output)

#MD
file <- 'MD_Asthma.txt'
enrichr_analysis(input,file,'MD','Asthma',database,background,up,down,output)

#ClustEx
file <- 'ClustEx1300_Asthma.txt'
enrichr_analysis(input,file,'ClustEx1300','Asthma',database,background,up,down,output)

# KPM
file <- 'KPM_Asthma.txt'
enrichr_analysis(input,file,'KPM','Asthma',database,background,up,down,output)

# Degas
file <- 'Degas_Asthma.txt'
enrichr_analysis(input,file,'Degas','Asthma',database,background,up,down,output)

################################### Modulation drug ########################

if(dir.exists('../4-MultipleModules_output') == FALSE){
  dir.create('../4-MultipleModules_output')
}

# 1) perform the enrich analysis on the single modules
# Core&Peel
f <- '../1-input_files/active_subnetworks/Asthma/MultipleModules/Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8_MultipleModules_Asthma.txt'
for(d in database){
  enrichr_analysis_multipleModules(f,'Asthma','Core&Peel-d0.5-j0.8',d)
}

p <- '../4-MultipleModules_output/Asthma/Core&Peel-d0.5-j0.8/L1000'
get_merge_enrichr('L1000',p)
p <- '../4-MultipleModules_output/Asthma/Core&Peel-d0.5-j0.8/CMAP'
get_merge_enrichr('CMAP',p)

# MD
f <- '../1-input_files/active_subnetworks/Asthma/MultipleModules/MD_MultipleModules_Asthma.txt'
for(d in database){
  enrichr_analysis_multipleModules(f,'Asthma','MD',d)
}
p <- '../4-MultipleModules_output/Asthma/MD/L1000'
get_merge_enrichr('L1000',p)
p <- '.../4-MultipleModules_output/Asthma/MD/CMAP'
get_merge_enrichr('CMAP',p)

##### 2) get table without filtering #########

up <- read.table('../1-input_files/DEGs/Asthma/up_genes_Asthmatic-Healthy.txt')
up <- up$V1
down <- read.table('../1-input_files/DEGs/Asthma/down_genes_Asthmatic-Healthy.txt')
down <- down$V1
database1 <- c('L1000','CMAP','drugperturbationGEO', 'drugmatrix')

# Core&Peel
for(d in database1){
  enrichr <- read_enrichr('../3-Drugs/','Core&Peel','Asthma',d, param = '-d0.5-f1-j0.8')
  path <- '../1-input_files/active_subnetworks/Asthma/MultipleModules/'
  table <- get_modulation_table(enrichr,'Core&Peel',path,up,down)
  path_input <-'../4-MultipleModules_output/Asthma/'
  path_output <- '../3-Drugs/Drug-modulation-data/Asthma-cp'
  table1 <- add_pvalue(path_input,'Core&Peel',d,table,path_output,'Asthma',param = '-d0.5-f1-j0.8')
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
  table1 <- read.csv(paste0(path_output,'/Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8','_','Asthma','_',d1,'_noFiltering.csv'))
  get_modulation_filter(table1,d,'Core&Peel',path_output,'Asthma',param = '-d0.5-f1-j0.8')
}

# MD
for(d in database1){
  enrichr <- read_enrichr('../3-Drugs/','MD','Asthma',d)
  path <- '../1-input_files/active_subnetworks/Asthma/MultipleModules/'
  table <- get_modulation_table(enrichr,'MD',path,up,down)
  path_input <-'../4-MultipleModules_output/Asthma/'
  path_output <- '../3-Drugs/Drug-modulation-data/Asthma-MD'
  table1 <- add_pvalue(path_input,'MD',d,table,path_output,'Asthma')
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
  table1 <- read.csv(paste0(path_output,'/MD','_','Asthma','_',d1,'_noFiltering.csv'))
  get_modulation_filter(table1,d,'MD',path_output,'Asthma')
}




