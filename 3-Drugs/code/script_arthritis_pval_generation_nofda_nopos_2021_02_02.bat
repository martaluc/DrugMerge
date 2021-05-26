@ECHO OFF
ECHO  generation of ranking by pvalue with positive filtering

SET allfilters1=
SET allfilters2=
SET allfilters3=
SET allfilters4=
SET allfilters5=
SET allfilters6=
SET allfilters7=
SET allfilters8=

ECHO GEO data filter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,0) %allfilters1%  >   ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-01.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,1) %allfilters1%  >   ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-02.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,2) %allfilters1%   >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-03.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,3) %allfilters1%   >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-04.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,4) %allfilters1%   >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-05.txt

ECHO DM data filter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,0) %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-11.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,1) %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-12.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,2) %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-13.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,3) %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-15.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,4) %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-15.txt

ECHO GEO data nofilter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,0) %allfilters3% >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-21.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,1) %allfilters3%>   ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-22.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,2) %allfilters3% >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-23.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,3) %allfilters3% >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-24.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,GEO,4) %allfilters3% >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-25.txt

ECHO DM data nofilter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,0) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-31.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,1) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-32.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,2) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-33.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,3) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-34.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,DM,4) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-35.txt

::

ECHO CMAPupdown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,0) %allfilters5%  >   ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-41.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,1) %allfilters5%  >   ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-42.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,2) %allfilters5%   >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-43.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,3) %allfilters5%   >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-44.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPup,4) %allfilters5%   >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-45.txt

ECHO L1000updown data filter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,0) %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-51.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,1) %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-52.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,2) %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-53.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,3) %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-55.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,4) %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-55.txt

ECHO CMAPupdown data nofilter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,0) %allfilters7% >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-61.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,1) %allfilters7%>   ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-62.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,2) %allfilters7% >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-63.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPupdown,3) %allfilters7% >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-64.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,CMAPup,4) %allfilters7% >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-65.txt

ECHO L1000updown data nofilter
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,0) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-71.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,1) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-72.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,2) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-73.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,3) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-74.txt
drugranking.py  --mode=nofilter --fdadrugsonly=False  -conf=(arth,L1000updown,4) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-nopos/test-filter-arth-2021-02-02-75.txt
