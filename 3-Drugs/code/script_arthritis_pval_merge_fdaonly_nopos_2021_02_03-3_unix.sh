#!/bin/csh
echo  generation of ranking by pvalue with positive filtering


echo GEO data
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,GEO,3\) -conf=\(arth,GEO,0\)   >   ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-01.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,GEO,3\) -conf=\(arth,GEO,1\)  >   ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-02.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,GEO,3\) -conf=\(arth,GEO,2\)    >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-03.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,GEO,3\)  -conf=\(arth,GEO,0\) -conf=\(arth,GEO,1\) -conf=\(arth,GEO,2\)  >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-04.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,GEO,3\)  -conf=\(arth,GEO,4\)    >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-05.txt  

echo DM data
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,DM,0\)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-11.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,DM,1\)  -conf=\(arth,DM,2\) -conf=\(arth,DM,3\) >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-12.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True   -conf=\(arth,DM,1\) -conf=\(arth,DM,2\)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-13.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,DM,1\) -conf=\(arth,DM,3\)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-14.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,DM,4\)  >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-15.txt  



echo CMAPupdown data
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,CMAPupdown,0\)   >   ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-41.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,CMAPupdown,1\)   >   ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-42.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,CMAPupdown,2\)    >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-43.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,CMAPupdown,3\)    >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-44.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,CMAPup,4\)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-45.txt  

echo L1000updown data
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,L1000updown,0\) -conf=\(arth,L1000updown,1\)  -conf=\(arth,L1000updown,2\)  >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-51.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,L1000updown,1\) -conf=\(arth,L1000updown,0\) >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-52.txt  
python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,L1000updown,2\)  -conf=\(arth,L1000updown,0\) >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-53.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,L1000updown,3\)  >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-54.txt  
#python drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=\(arth,L1000updown,4\)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-55.txt  
