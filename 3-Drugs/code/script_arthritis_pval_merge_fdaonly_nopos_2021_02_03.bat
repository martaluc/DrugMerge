@ECHO OFF
ECHO  generation of ranking by pvalue with positive filtering


ECHO GEO data
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,GEO,3) -conf=(arth,GEO,0)   >   ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-01.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,GEO,3) -conf=(arth,GEO,1)  >   ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-02.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,GEO,3) -conf=(arth,GEO,2)    >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-03.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,GEO,3)  -conf=(arth,GEO,0) -conf=(arth,GEO,1) -conf=(arth,GEO,2)  >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-04.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,GEO,3)  -conf=(arth,GEO,4)    >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-05.txt

ECHO DM data
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,DM,0)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-11.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,DM,1)  -conf=(arth,DM,2) -conf=(arth,DM,3) >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-12.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True   -conf=(arth,DM,1) -conf=(arth,DM,2)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-13.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,DM,1) -conf=(arth,DM,3)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-14.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,DM,4)  >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-15.txt



ECHO CMAPupdown data
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,CMAPupdown,0)   >   ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-41.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,CMAPupdown,1)   >   ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-42.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,CMAPupdown,2)    >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-43.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,CMAPupdown,3)    >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-44.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,CMAPup,4)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-45.txt

ECHO L1000updown data
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,L1000updown,0) -conf=(arth,L1000updown,1)  -conf=(arth,L1000updown,2)  >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-51.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,L1000updown,1) -conf=(arth,L1000updown,0) >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-52.txt
drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,L1000updown,2)  -conf=(arth,L1000updown,0) >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-53.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,L1000updown,3)  >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-54.txt
::drugranking.py  --mode=nofilter --fdadrugsonly=True  -conf=(arth,L1000updown,4)   >  ./modulation-arthritis-results-pval-fdaonly-nopos/merge-filter-arth-2021-02-03-55.txt
