#---------------------------------------------------------------------------------
#                               Functions
#----------------------------------------------------------------------------------
#-----------------------------------------------------------------------
# function that creates directories in output = '../3-Drugs'
#-----------------------------------------------------------------------

create_directories <- function(output){
  d <- c('CMAP','L1000','drugmatrix','drugperturbationGEO')
  s <- c('Asthma','Rheumatoid_arthritis','Prostate_cancer','Colorectal_cancer','covid-19-balf',
         'covid-19-pbmc','covid-19-covid-cells')
  
  for(i in d){
    for(j in s){
      if(dir.exists(paste0(output,j,'_',i)) == FALSE){
        dir.create(paste0(output,j,'_',i))}
    }
  }
  if(dir.exists(paste0(output,'Drug-modulation-data')) == FALSE){
    dir.create(paste0(output,'Drug-modulation-data'))}
  f <- c('Asthma','prostate-cancer','colorectal-cancer','Arthritis','covid19-balf','covid19-pbmc',
         'covid19-covidcells')
  for (k in f) {
    if(dir.exists(paste0(output,'Drug-modulation-data/',k,'-cp')) == FALSE){
      dir.create(paste0(output,'Drug-modulation-data/',k,'-cp'))}
    if(dir.exists(paste0(output,'Drug-modulation-data/',k,'-MD')) == FALSE){
      dir.create(paste0(output,'Drug-modulation-data/',k,'-MD'))}
  }
}
#---------------------------------------------------------------------------
# gene_database : the gene symbols of the disease-gene database
# enrichr: the enrichr output
##--------------------------------------------------------------------------

gene_disease_enrichr <- function(gene_database,enrichr){
  
  alias <- alias2SymbolTable(gene_database, species = "Hs")
  #if alias == NA then use the gene names in genes
  alias[which(is.na(alias))] <- gene_database[which(is.na(alias))]
  
  perc <- c()
  num <- c()
  for (g in enrichr$Genes) {
    genes <- unlist(strsplit(as.character(g),';'))
    genes <- alias2SymbolTable(genes, species = 'Hs')
    disease_genes <- length(intersect(genes,alias))
    p <- (disease_genes*100)/length(genes)
    perc <- c(perc,p)
    num <- c(num,disease_genes)
  }
  
  enrichr <- cbind(enrichr,perc,num)
  return(enrichr)
}

#----------------------------------------------------------------------------------
# this function includes the number of disese-gene for each pathway
#---------------------------------------------------------------------------------

final_enrichr_sm <- function(pathway_final,disease,up,down){
  
  disgenet <- read_tsv('../1-input_files/curated_gene_disease_associations.tsv')
  ncg <- ncg <- read_tsv('../1-input_files/NCG6_cancergenes.csv')
  
  #final <- read.csv(d)
  if(disease == 'Prostate_cancer'){
    pattern <- 'prostate'
  }
  if(disease == 'Colorectal_cancer'){
    pattern <- 'colorectal'
  }
  if(disease == 'Rheumatoid_arthritis'){
    pattern <- 'rheumatoid'
  }
  if(disease == 'Asthma'){
    pattern <- 'asthma'
  }
  
  #include percentage of disease genes
  disgenet <- disgenet[grep(pattern,disgenet$diseaseName,ignore.case = T),]
  pathway_final <- gene_disease_enrichr(disgenet$geneSymbol,pathway_final)
  colnames(pathway_final)[c(10,11)] <- c('%DisGeNet','num_DisGeNet')
  
  ncg <- ncg[grep(pattern,ncg$cancer_type, ignore.case = T),]
  pathway_final <- gene_disease_enrichr(ncg$symbol,pathway_final)
  colnames(pathway_final)[c(12,13)] <- c('%NCG','num_NCG')
  
  pathway_final <- gene_disease_enrichr(union(up$V1,down$V1),pathway_final)
  colnames(pathway_final)[c(14,15)] <- c('%DEGs','num_DEGs')
  
  return(pathway_final)
  #write.csv(pathway_final,paste0(output_dir,gsub('.csv','',d),'_perc.csv'))
  
}

#---------------------------------------------------------------------
#--------------------------------------------------------------------

get_directory_name <- function(d){
  if(d == 'LINCS_L1000_Chem_Pert_up' | d == 'LINCS_L1000_Chem_Pert_down'){
    d1 <- 'L1000'
  }
  if(d == 'Old_CMAP_down' | d == 'Old_CMAP_up'){
    d1 <- 'CMAP'
  }
  if(d == 'DrugMatrix'){
    d1 <- 'drugmatrix'
  }
  if(d == 'Drug_Perturbations_from_GEO_2014'){
    d1 <- 'drugperturbationGEO'
  }
  return(d1)
}
#----------------------------------------------------------------------------------------------------
# disease: 'Asthma', 'Prostate_cancer', 'Colorectal_cancer', 'Rheumatoid_arthritis', 'covid-19-balf'
#           'covid-19-pbmc', 'covid-19-covid-cells'
#----------------------------------------------------------------------------------------------------

enrichr_analysis <- function(input,file,method,disease,database,background, up = NULL, down = NULL,output){
  
  print(output)
  #read the active subnetwork file
  singleModule <- read.table(paste0(input,file))
  
  if(length(grep('Core&Peel',method)) ==1){
    genes <- singleModule$V1
  }
  if(method == 'MD'){
    genes <- union(singleModule$V1,singleModule$V2) 
  }
  if(length(grep('ClustEx',method)) ==1){
    singleModule <- read.table(paste0(input,file), header = TRUE)
    genes <- singleModule$Gene
    genes <- background$hgnc_symbol[match(genes,background$entrezgene_id)]
  }
  if(method == 'Degas'){
    genes <- background$hgnc_symbol[match(singleModule$V1, background$entrezgene_id)]
  }
  if(method == 'KPM'){
    genes <- union(singleModule$V1,singleModule$V3)
  }
  # convert the gene names to official symbols
  alias <- alias2SymbolTable(genes, species = "Hs")
  #if alias == NA then use the gene names in genes
  alias[which(is.na(alias))] <- genes[which(is.na(alias))]
  
  # perform the enrichment analysis for each drug perturbation database
  for(d in database){
    e <- enrichr(genes = alias,databases = d)
    e <- e[[1]][which(e[[1]]$Adjusted.P.value <= 0.05),]
    if (is.null(e) == FALSE) {
      if (nrow(e)!=0) {
        d1 <- get_directory_name(d)
        print(d1)
        output_directory <- paste0(output,disease,'_',d1)
        print(output_directory)
        if(disease == 'Asthma' | disease == 'Prostate_cancer' | disease == 'Colorectal_cancer' | disease == 'Rheumatoid_arthritis'){
          e <- final_enrichr_sm(e,disease,up,down)
          write.csv(e,paste0(output_directory,'/enrichR_',method,'_',d,'_perc.csv'), row.names = F)
        }
        else{
          if(d1 == 'L1000' | d1 == 'CMAP'){
          write.csv(e,paste0(output_directory,'/enrichR_',method,'_',d,'.csv'), row.names = F)}
        else{write.csv(e,paste0(output_directory,'/enrichR_',method,'_',d,'_perc.csv'), row.names = F)}
        }
      }
    }
  }
}

#---------------------------------------------------------------------------
# this function performs the enrichment analysis for every single module
# of Core&Peel and MD (other methods do not detect multiple modules)

# genes = genes of each module
# d = drug perturbation database
# i = number of the module (from 1 to length(module))
# disease: 'Asthma', 'Prostate_cancer', 'Colorectal_cancer', 'Rheumatoid_arthritis', 
#           'covid-19-balf', 'covid-19-pbmc', 'covid-19-covid-cells'
#---------------------------------------------------------------------------

enrichR_multipleModule <- function(genes,d,i,disease,method){
  
  if(d == 'LINCS_L1000_Chem_Pert_up' | d == 'LINCS_L1000_Chem_Pert_down'){
    d1 <- 'L1000'
  }
  if(d == 'Old_CMAP_down' | d == 'Old_CMAP_up'){
    d1 <- 'CMAP'
  }
  if(d == 'Drug_Perturbations_from_GEO_2014'){
    d1 == d
  }
  if(d == 'DrugMatrix'){
    d1 == d
  }
  #create output directory
  if(dir.exists(paste0('../4-MultipleModules_output/',disease)) == FALSE){
    dir.create(paste0('../4-MultipleModules_output/',disease))
  }
  if(dir.exists(paste0('../4-MultipleModules_output/',disease,'/',method)) == FALSE){
    dir.create(paste0('../4-MultipleModules_output/',disease,'/',method))
  }
  if(dir.exists(paste0('../4-MultipleModules_output/',disease,'/',method,'/',d1)) == FALSE){
    dir.create(paste0('../4-MultipleModules_output/',disease,'/',method,'/',d1))
  }
  dir_output <- paste0('../4-MultipleModules_output/',disease,'/',method,'/',d1)
  
  alias <- alias2SymbolTable(genes, species = "Hs")
  #if alias == NA then use the gene names in genes
  alias[which(is.na(alias))] <- genes[which(is.na(alias))]
  
  e <- enrichr(genes = alias,
               databases = d)
  e <- e[[1]][which(e[[1]]$P.value <= 0.05),]
  if (is.null(e) == FALSE) {
    if (nrow(e)!=0) {
      write.csv(e,paste0(dir_output,'/enrichR_module',i,'_',d,'.csv'), row.names = F)
      
    }
  }
}

#-------------------------------------------------------------------------------
# f = file name
# d = database name
# method = 'MD', 'Core&Peel'(specify the parameters used) ex: Core&Peel-d0.5-j0.8
# disease: 'Asthma', 'Prostate_cancer', 'Colorectal_cancer', 'Rheumatoid_arthritis', 
#           'covid-19-balf', 'covid-19-pbmc', 'covid-19-covid-cells'
#-------------------------------------------------------------------------------

enrichr_analysis_multipleModules <- function(f,disease,method,d){
  
  # read the module file
  modules <- scan(f, what = '', sep = '\n')
  if(length(grep('Core&Peel',method) >=1 )){
    s <- ' '
  }
  if(method == 'MD'){
    s <- '\t'
  }
  for(i in seq(1,length(modules))){
    genes <- unlist(strsplit(modules[i], split = s))
    enrichR_multipleModule(genes,d,i,disease,method)
  }
}

#-------------------------------------------------------------------
# this function merges the up and down files in one unique file 
# d = database name (L1000 or CMAP)
# p = path where L1000 e Cmap files are located
#-------------------------------------------------------------------

get_merge_enrichr <- function(d,p){
  
  if(dir.exists(paste0(p,'/','merge_enrich')) == FALSE){
    dir.create(paste0(p,'/','merge_enrich'))
  }

  files <- list.files(path = p, pattern = '.csv')
  n <- gsub('enrichR_module','',files)
  
  if(d == 'L1000'){
    n <- gsub('_LINCS_L1000_Chem_Pert_down.csv','',n)
    n <- gsub('_LINCS_L1000_Chem_Pert_up.csv','',n)
    pattern <- '_LINCS_L1000_Chem_Pert'
  }
  if(d == 'CMAP'){
    n <- gsub('_Old_CMAP_down.csv','',n)
    n <- gsub('_Old_CMAP_up.csv','',n)
    pattern <- '_Old_CMAP'
  }
  n <- as.integer(unique(n))
  
  for(i in n){
    
    if(file.exists(paste0(p,'/enrichR_module',as.character(i),pattern,'_down.csv'))){
      enrich_down <- read.csv(paste0(p,'/enrichR_module',as.character(i),pattern,'_down.csv'))
      enrich_down$Term <- paste(enrich_down$Term,'-dn',sep = '')
      #print(enrich_down$Term)
    }
    else{enrich_down <- NULL}
    
    if(file.exists(paste0(p,'/enrichR_module',as.character(i),pattern,'_up.csv'))){
      enrich_up <- read.csv(paste0(p,'/enrichR_module',as.character(i),pattern,'_up.csv'))
      enrich_up$Term <- paste(enrich_up$Term,'-up',sep = '')
    }
    else{enrich_up <- NULL}
    
    enrichr <- rbind(enrich_down,enrich_up)
    write.csv(enrichr, file = paste0(p,'/merge_enrich/enrichR_module',as.character(i),gsub('Old_','',pattern),'.csv'))
  }
}

#----------------------------------------------------------------------------------------
# d = name of database
# path_input = ex:'../4-MultipleModules_output/Asthma/
# method = 'MD', 'Core&Peel'
# path_output <- ex:'../3-Drugs/Drug-modulation-data/disease_name-cp or disease_name-MD'
#----------------------------------------------------------------------------------------

add_pvalue <- function(path_input,method,d,table,path_output,disease,param = NULL){
  
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
    d1 <- 'Drug_Perturbations_from_GEO_2014'
  }
  if(method == 'Core&Peel'){
    m <- paste0(method,'-',strsplit(param,split = '-')[[1]][2],'-',strsplit(param,split = '-')[[1]][4])
  }
  if(method == 'MD'){
    m <- 'MD'
  }
  if(d == 'L1000' | d == 'CMAP'){
    path1 <- paste0(path_input,'/',m,'/',d1,'/','merge_enrich')
  }
  else{
    path1 <- paste0(path_input,'/',m,'/',d1)
  }
  p_value <- c()
  adjusted_pvalue <- c()
  
  for(j in unique(table[,'modules'])){
    if(file.exists(paste0(path1,'/enrichR_module',j,'_',d1,'.csv'))){
      enrich <- read.csv(paste0(path1,'/enrichR_module',j,'_',d1,'.csv'))
      subtable <- as.matrix(table[which(table[,'modules'] == j),])
      
      if(class(subtable)[1] == 'matrix' & ncol(subtable) > 1){
        p_value <- c(p_value, enrich$P.value[match(subtable[,'drugs'],enrich$Term)])
        adjusted_pvalue <- c(adjusted_pvalue, enrich$Adjusted.P.value[match(subtable[,'drugs'],enrich$Term)])
        }
      
      else{
        #print(j)
        p_value <- c(p_value, enrich$P.value[match(subtable['drugs'],enrich$Term)])
        adjusted_pvalue <- c(adjusted_pvalue, enrich$Adjusted.P.value[match(subtable['drugs'],enrich$Term)])
        }
      
    }
    else{
      #print(j)
      subtable <- table[which(table[,'modules'] == j),]
      if(class(subtable)[1] == 'character'){
        p_value <- c(p_value,rep(NA,1))
        adjusted_pvalue <- c(adjusted_pvalue,rep(NA,1))
        
      }
      else{
        p_value <- c(p_value,rep(NA,nrow(subtable)))
        adjusted_pvalue <- c(adjusted_pvalue,rep(NA,nrow(subtable)))
      }
    }
  }
  
  table <- cbind(table,p_value,adjusted_pvalue)
  
  if(d == 'drugperturbationGEO'){
    d1 <- 'GEO'
  }
  if(method == 'Core&Peel'){
    m2 <- paste0(method,'-coexpr025marta-r1-nl10',param)
  }
  if(method == 'MD'){
    m2 <- 'MD'
  }
  write.csv(table, file = paste0(path_output,'/',m2,'_',disease,'_',d1,'_noFiltering.csv'), row.names = F)
  return(table)
  }

##---------------------------------------------------------------------------
# disease: 'Asthma', 'Prostate_cancer', 'Colorectal_cancer', 'Rheumatoid_arthritis', 
#           'covid-19-balf', 'covid-19-pbmc', 'covid-19-covid-cells'
# method  = 'MD' or 'Core&Peel'
# param = core&peel parameters ex: d0.5-f1-j0.8
#----------------------------------------------------------------------------
read_enrichr <- function(path_enrich,method,disease,d,param = NULL){
  
  files <- list.files(paste0(path_enrich,disease,'_',d), pattern = '.csv')
  #print(files)
  
  if(method == 'MD'){
    files <- files[grep('enrichR_MD_',files)]
    print(files)
  }
  if(length(grep('Core&Peel',method)) >= 1){
    files <- files[grep(paste0('enrichR_',method),files)]
    files <- files[grep(param,files)]
    print(files)
  }
  
  if(d == 'L1000'){
    f_d <- files[grep('LINCS_L1000_Chem_Pert_down',files)]
    f_u <- files[grep('LINCS_L1000_Chem_Pert_up',files)]
    enrich_down <- read.csv(paste0(path_enrich,disease,'_',d,'/',f_d))
    enrich_down$Term <- paste(enrich_down$Term,'-dn',sep = '')
    enrich_up <- read.csv(paste0(path_enrich,disease,'_',d,'/',f_u))
    enrich_up$Term <- paste(enrich_up$Term,'-up',sep = '')
    enrichr <- as.data.frame(rbind(enrich_down,enrich_up))
  }
  if(d == 'CMAP'){
    f_d <- files[grep('Old_CMAP_down',files)]
    f_u <- files[grep('Old_CMAP_up',files)]
    enrich_down <- read.csv(paste0(path_enrich,disease,'_',d,'/',f_d))
    enrich_down$Term <- paste(enrich_down$Term,'-dn',sep = '')
    enrich_up <- read.csv(paste0(path_enrich,disease,'_',d,'/',f_u))
    enrich_up$Term <- paste(enrich_up$Term,'-up',sep = '')
    enrichr <- as.data.frame(rbind(enrich_down,enrich_up))
  }
  if(d == 'drugmatrix' | d == 'drugperturbationGEO'){
    enrichr <- read.csv(paste0(path_enrich,disease,'_',d,'/',files))
  }
  return(enrichr)
}


###-------------------------------------------------------------------------
# enrichr = output of read_enrichr function
# path = path where the modules are located ex: '../1-input_files/active_subnetworks/disease_name/MultipleModules/'
# up = up-regulated genes list
# down = down-regulated genes list
##--------------------------------------------------------------------------

get_modulation_table <- function(enrichr,method,path,up,down){
  
  files <- list.files(path, pattern = '.txt')
  if(method == 'MD'){
    modules <- scan(paste0(path,files[grep('MD',files)]), what = '', sep = '\n')
    modules1 <- strsplit(modules, split = '\t')
  }
  else{
    modules <- scan(paste0(path,files[grep('Core&Peel',files)]), what = '', sep = '\n')
    modules1 <- strsplit(modules, split = ' ')
  }
  enrichr1 <- strsplit(as.character(enrichr$Genes), split = ';')
  names(enrichr1) <- enrichr$Term
  
  l <- lapply(modules1, function(x) lapply(enrichr1, function(y) intersect(x,y)))
  
  size <- lapply(modules1, function(x) length(x))
  size_module_gene <- lapply(l,function(x) lengths(x))
  
  DEGs_up <- lapply(modules1, function(x) length(intersect(x,up)))
  DEGs_down <- lapply(modules1, function(x) length(intersect(x,down)))
  
  DEG_up_drug <- vector(mode = 'list')
  for(j in seq(1,length(modules))){
    DEG_up_drug[[j]] <- lapply(l[[j]], function(x) length(intersect(unlist(x),up)))
  }
  
  DEG_down_drug <- vector(mode = 'list')
  for(j in seq(1,length(modules))){
    DEG_down_drug[[j]] <- lapply(l[[j]], function(x) length(intersect(unlist(x),down)))
  }
  
  active_modules <- c()
  drugs <- c()
  module_size <- c()
  drug_module_genes <- c()
  DEG_up <- c()
  DEG_down <- c()
  DE_up_drug <- c()
  DE_down_drug <- c()
  for(i in seq(1,length(modules))){
    active_modules <- c(active_modules,rep(i,length(l[[i]])))
    drugs <- c(drugs,names(l[[i]]))
    module_size <- c(module_size,rep(size[[i]],length(l[[i]])))
    DEG_up <- c(DEG_up,rep(DEGs_up[[i]],length(l[[i]])))
    DEG_down <- c(DEG_down,rep(DEGs_down[[i]],length(l[[i]])))
    drug_module_genes <- c(drug_module_genes,size_module_gene[[i]])
    DE_up_drug <- c(DE_up_drug,DEG_up_drug[[i]])
    DE_down_drug <- c(DE_down_drug,DEG_down_drug[[i]])
    
  }
  
  DE_up_drug <- unlist(DE_up_drug)
  names(DE_up_drug) <- NULL
  
  DE_down_drug <- unlist(DE_down_drug)
  names(DE_down_drug) <- NULL
  
  table <- cbind(active_modules,drugs,module_size,DEG_up,DEG_down,drug_module_genes,DE_up_drug,DE_down_drug)
  table <- table[which(table[,'drug_module_genes'] != 0),]
  colnames(table) <- c('modules','drugs','module_size','DEG_up','DEG_down','drug_module_genes','DE_up_drug','DE_down_drug')
  return(table)
}
#------------------------------------------------------------------------------
# table1 = otput of add_pvalue function
# d = database
# method = 'MD', 'Core&Peel-d0.5-j0.8', 'Core&Peel-d0.7-j0.8'
# path_output = path of output files (ex: '../3-output_files/Asthma')
#-----------------------------------------------------------------------------

get_modulation_filter <- function(table1,d,method,path_output,disease,param = NULL){
  
  index_down <- which(table1[,'DEG_up'] > 0 & table1[,'DEG_down'] == 0)
  index_up <- which(table1[,'DEG_up'] == 0 & table1[,'DEG_down'] > 0)
  if(d == 'L1000' | d == 'CMAP' | d == 'drugmatrix'){
    index_drug_down <- grep('-dn',table1[,'drugs'])
    index_drug_up <- grep('-up',table1[,'drugs'])
  }
  if(d == 'drugperturbationGEO'){
    index_drug_down <- grep(' down',table1[,'drugs'])
    index_drug_up <- grep(' up',table1[,'drugs'])
  }
  
  index_down_final <- intersect(index_down,index_drug_down)
  index_up_final <- intersect(index_up,index_drug_up)
  
  index <- which(table1[,'drug_module_genes'] > 0)
  index_final <- union(index_down_final,index_up_final)
  table2 <- table1[intersect(index,index_final),]
  
  #print(class(table2[,'DE_up_drug']))
  #print(class(table2[,'DE_up_drug']))
  
  table2[,'DE_drug'] <- apply(cbind(table2[,'DE_up_drug'],table2[,'DE_down_drug']),1,function(x) ifelse(x[1] > 0,x[1], x[2]))
  
  table2[,'DE_up_drug'] <- NULL
  table2[,'DE_down_drug'] <- NULL
  table2 <- table2[,c(1,2,3,4,5,6,9,7,8)]
  
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
  if(method == 'Core&Peel'){
    m <- paste0(method,'-coexpr025marta-r1-nl10',param)
  }
  if(method == 'MD'){
    m <- 'MD'
  }
  write.csv(table2, file = paste0(path_output,'/',m,'_',disease,'_',d1,'.csv'), row.names = F)
}