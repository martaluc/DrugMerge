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

#output <- '../3-Drugs/'
output <- '../3-output_files/'
create_directories(output)

####-------------------------------------------------------------------------------
#                           Rheumatoid arthritis
#----------------------------------------------------------------------------------
up <- read.table('../1-input_files/DEGs/Rheumatoid_arthritis/up_genes_Rheumatoid-Control.txt')
down <- read.table('../1-input_files/DEGs/Rheumatoid_arthritis/down_genes_Rheumatoid-Control.txt')

input <- '../1-input_files/active_subnetworks/Rheumatoid_arthritis/'

# Core&Peel
file <- 'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_RA.txt'
enrichr_analysis(input,file,'Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest','Rheumatoid_arthritis',
                 database,background,up,down,output)

# MD
file <- 'MD_RA.txt'
enrichr_analysis(input,file,'MD','Rheumatoid_arthritis',
                 database,background,up,down,output)
# ClustEx
file <- 'ClustEx500_RA.txt'
enrichr_analysis(input,file,'ClustEx500','Rheumatoid_arthritis',
                 database,background,up,down,output)

# KPM
file <- 'KPM_RA.txt'
enrichr_analysis(input,file,'KPM','Rheumatoid_arthritis',
                 database,background,up,down,output)

# MD
file <- 'Degas_RA.txt'
enrichr_analysis(input,file,'Degas','Rheumatoid_arthritis',
                 database,background,up,down,output)


################################### Modulation drug ########################

if(dir.exists('../4-MultipleModules_output') == FALSE){
  dir.create('../4-MultipleModules_output')
}

# 1) perform the enrich analysis on the single modules
# Core&Peel
f <- '../1-input_files/active_subnetworks/Rheumatoid_arthritis/MultipleModules/Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8-marklargest_MultipleModules.txt'
for(d in database){
  enrichr_analysis_multipleModules(f,'Rheumatoid_arthritis','Core&Peel-d0.5-j0.8',d)
}

p <- '../4-MultipleModules_output/Rheumatoid_arthritis/Core&Peel-d0.5-j0.8/L1000'
get_merge_enrichr('L1000',p)
p <- '../4-MultipleModules_output/Rheumatoid_arthritis/Core&Peel-d0.5-j0.8/CMAP'
get_merge_enrichr('CMAP',p)

# MD
f <- '../1-input_files/active_subnetworks/Rheumatoid_arthritis/MultipleModules/MD_MultipleModules_Rheumatoid_arthritis.txt'
for(d in database){
  enrichr_analysis_multipleModules(f,'Rheumatoid_arthritis','MD',d)
}
p <- '../4-MultipleModules_output/Rheumatoid_arthritis/MD/L1000'
get_merge_enrichr('L1000',p)
p <- '.../4-MultipleModules_output/Rheumatoid_arthritis/MD/CMAP'
get_merge_enrichr('CMAP',p)

##### 2) get table without filtering #########

up <- read.table('../1-input_files/DEGs/Rheumatoid_arthritis/')
up <- up$V1
down <- read.table('../1-input_files/DEGs/Rheumatoid_arthritis/')
down <- down$V1
database1 <- c('L1000','CMAP','drugperturbationGEO', 'drugmatrix')

# Core&Peel
for(d in database1){
  enrichr <- read_enrichr('../3-Drugs/','Core&Peel','Rheumatoid_arthritis',d, param = '-d0.5-f1-j0.8')
  path <- '../1-input_files/active_subnetworks/Rheumatoid_arthritis/MultipleModules/'
  table <- get_modulation_table(enrichr,'Core&Peel',path,up,down)
  path_input <-'../4-MultipleModules_output/Rheumatoid_arthritis/'
  path_output <- '../3-Drugs/Drug-modulation-data/Arthritis-cp'
  table1 <- add_pvalue(path_input,'Core&Peel',d,table,path_output,'Rheumatoid_arthritis',param = '-d0.5-f1-j0.8')
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
  table1 <- read.csv(paste0(path_output,'/Core&Peel-coexpr025marta-r1-nl10-d0.5-f1-j0.8','_','Rheumatoid_arthritis','_',d1,'_noFiltering.csv'))
  get_modulation_filter(table1,d,'Core&Peel',path_output,'Rheumatoid_arthritis',param = '-d0.5-f1-j0.8')
}

# MD
for(d in database1){
  enrichr <- read_enrichr('../3-Drugs/','MD','Rheumatoid_arthritis',d)
  path <- '../1-input_files/active_subnetworks/Rheumatoid_arthritis/MultipleModules/'
  table <- get_modulation_table(enrichr,'MD',path,up,down)
  path_input <-'../4-MultipleModules_output/Rheumatoid_arthritis/'
  path_output <- '../3-Drugs/Drug-modulation-data/Arthritis-MD'
  table1 <- add_pvalue(path_input,'MD',d,table,path_output,'Rheumatoid_arthritis')
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
  table1 <- read.csv(paste0(path_output,'/MD','_','Rheumatoid_arthritis','_',d1,'_noFiltering.csv'))
  get_modulation_filter(table1,d,'MD',path_output,'Rheumatoid_arthritis')
}


