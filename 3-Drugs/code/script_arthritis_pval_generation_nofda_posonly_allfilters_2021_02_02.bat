@ECHO OFF
ECHO  generation of ranking by pvalue with positive filtering

SET allfilters1=-filter=(arth,MD,GEO,filter,deltadeg) -filter=(arth,MD,GEO,filter,size_x_deltadeg)  -filter=(arth,cpd05j08,GEO,filter,deltadeg) -filter=(arth,cpd05j08,GEO,filter,size_x_deltadeg)
SET allfilters2=-filter=(arth,MD,DM,filter,deltadeg) -filter=(arth,MD,DM,filter,size_x_deltadeg)  -filter=(arth,cpd05j08,DM,filter,deltadeg) -filter=(arth,cpd05j08,DM,filter,size_x_deltadeg)
SET allfilters3=-filter=(arth,MD,GEO,nofilter,deltadeg) -filter=(arth,MD,GEO,nofilter,size_x_deltadeg)  -filter=(arth,cpd05j08,GEO,nofilter,deltadeg) -filter=(arth,cpd05j08,GEO,nofilter,size_x_deltadeg)
SET allfilters4=-filter=(arth,MD,DM,nofilter,deltadeg) -filter=(arth,MD,DM,nofilter,size_x_deltadeg)  -filter=(arth,cpd05j08,DM,nofilter,deltadeg) -filter=(arth,cpd05j08,DM,nofilter,size_x_deltadeg)
SET allfilters5=-filter=(arth,MD,CMAP,filter,deltadeg) -filter=(arth,MD,CMAP,filter,size_x_deltadeg)  -filter=(arth,cpd05j08,CMAP,filter,deltadeg) -filter=(arth,cpd05j08,CMAP,filter,size_x_deltadeg)
SET allfilters6=-filter=(arth,MD,L1000,filter,deltadeg) -filter=(arth,MD,L1000,filter,size_x_deltadeg)  -filter=(arth,cpd05j08,L1000,filter,deltadeg) -filter=(arth,cpd05j08,L1000,filter,size_x_deltadeg)
SET allfilters7=-filter=(arth,MD,CMAP,nofilter,deltadeg) -filter=(arth,MD,CMAP,nofilter,size_x_deltadeg)  -filter=(arth,cpd05j08,CMAP,nofilter,deltadeg) -filter=(arth,cpd05j08,CMAP,nofilter,size_x_deltadeg)
SET allfilters8=-filter=(arth,MD,L1000,nofilter,deltadeg) -filter=(arth,MD,L1000,nofilter,size_x_deltadeg)  -filter=(arth,cpd05j08,L1000,nofilter,deltadeg) -filter=(arth,cpd05j08,L1000,nofilter,size_x_deltadeg)

SET allfilters=%allfilters1% %allfilters2% %allfilters3% %allfilters4% %allfilters5% %allfilters6% %allfilters7% %allfilters8%

ECHO GEO data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,0) %allfilters%  >   ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-01.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,1) %allfilters%  >   ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-02.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,2) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-03.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,3) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-04.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,4) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-05.txt

ECHO DM data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,0) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-11.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,1) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-12.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,2) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-13.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,3) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-15.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,4) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-15.txt

ECHO GEO data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,0) %allfilters% >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-21.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,1) %allfilters%>   ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-22.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,2) %allfilters% >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-23.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,3) %allfilters% >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-24.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,4) %allfilters% >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-25.txt

ECHO DM data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,0) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-31.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,1) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-32.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,2) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-33.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,3) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-34.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,4) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-35.txt

::

ECHO CMAPupdown data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,0) %allfilters%  >   ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-41.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,1) %allfilters%  >   ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-42.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,2) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-43.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,3) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-44.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPup,4) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-45.txt

ECHO L1000updown data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,0) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-51.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,1) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-52.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,2) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-53.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,3) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-55.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,4) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-55.txt

ECHO CMAPupdown data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,0) %allfilters% >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-61.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,1) %allfilters%>   ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-62.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,2) %allfilters% >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-63.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,3) %allfilters% >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-64.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPup,4) %allfilters% >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-65.txt

ECHO L1000updown data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,0) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-71.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,1) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-72.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,2) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-73.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,3) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-74.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,4) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/test-filter-arth-2021-02-02-75.txt
