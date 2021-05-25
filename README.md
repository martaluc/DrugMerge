# DrugMerge
This repository was made with the intent to ensure reproducibility of the results of DrugMerge, a pipeline for preclinical computational drug repositioning based on merging multiple drug rankings obtained with an ensemble of Disease Active Subnetworks. We tested the methodology for Asthma, Prostate cancer, Colorectal cancer, Rheumatoid arthritis, and COVID-19 (see https://www.medrxiv.org/content/10.1101/2021.05.13.21257140v1 for more details).

The pipeline consists of two parts: one written in R (version 3.6) and the other in python 2.7.
The R code performs the drug enrichment analyses (using the enrichR package) for each active subnetwork obtained for each disease (see our previous work https://www.nature.com/articles/s41598-020-74705-6 to know how we obtained the active subnetworks)
The python code performs the merging of the drug lists, calculates the RHR (Reciprocal Hit-Rank) and precision@20, two measures used to evaluate the DrugMerge performance in predicting drugs with the respect to the golden-standard drugs (Therapeutic Target Database for the four benchmark diseases and clinicaltrials.gov for COVID-19).

This repository includes:

• 1-input_files directory which contains the differentially expressed genes (in 'DEGs' folder) and the active subnetworks for each disease and for each active subnetwork identification algorithms such as Core&Peel, ModuleDiscoverer (MD), Degas, ClustEx, and KeyPathwayMiner (KPM).

• 2-script contains one R script for each disease.

• 3-Drugs contains the output files of the R scripts which are also the inputs of the python part. The python scripts are located in the 'code' folder.

• 4-MultipleModules_output includes the outputs of the drug enrichment analysis for each single module of Core&Peel and MD. This folder is created by the R scripts to calculates the files included in '3-Drugs/Drug-modulation-data'.

## Instructions
1) Move to the '2-script' folder and set it as working directory.
2) Run the R scripts (one for each disease). The output files are stored in the '3-Drugs' directory, in folders with the following pattern: disease_drugDatabaseName ex: Asthma_CMAP, Asthma_L1000, Asthma_drugmatrix, and Asthma_drugperturbationGEO. The Drug-modulation-data folder contains the drug lists for every single module of Core&Peel and MD. The folders are called as follows: disease-cp or disease-MD.
3) Move to '3-Drugs/code' folder.
4) Build an empty directory 'modulation-dumps'.
5) Generate the output log directory structure: 

      python file_summary_2_cl.py  --mode=createdirectory
      
The directories are generated for all diseases and all configurations.

6) Run linux (.sh) or windows (.bat) shell scripts. For a given data set all scripts with 'score' in the script name should be run first, later the scripts with 'pval' in the script name. Note: dates in log filenames used the scripts can be changed, all other parts of the log filenames should be left as is.

7) Generate summaries in csv format (';' as separator): 
      python file_summary_2_cl.py --prefix=<test|merge|global> -dir=<directoryname>  -out=<outputfilename>
      
Option 'global' is used only for merging runs on the covid19 three data sets. Use the directories for pmbc data. Summary Files are placed in the same directory holding the log files. Lists of drugs can be extracted from the log files of interest.
  
### Notes
• the drug enrichment analyses have been performed on June 2020 (for DrugMatrix and GEO) and on January 2021 (for L1000 and CMAP). If you run the R scripts, you could obtain slightly different results because of updating of the drug perturbation databases.

• if you have the python3 version installed, replace 'python' with 'python2' in the .sh scripts.
      
• the 'metadata_file.py' and 'mapping_modulation_data.py' files located in '3-Drugs/code' include all the path and the files' names of the input files for python scripts. If you decide to rename the input files, you should change the corresponding names in these two files.
