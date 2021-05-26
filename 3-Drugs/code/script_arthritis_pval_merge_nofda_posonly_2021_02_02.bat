@ECHO OFF
ECHO  generation of ranking by pvalue with positive filtering

SET allfilters1=-filter=(arth,MD,GEO,filter,deltadeg) -filter=(arth,MD,GEO,filter,size_x_deltadeg)  -filter=(arth,cpd05j08,GEO,filter,deltadeg) -filter=(arth,cpd05j08,GEO,filter,size_x_deltadeg)
SET allfilters2=-filter=(arth,MD,DM,filter,deltadeg) -filter=(arth,MD,DM,filter,size_x_deltadeg)  -filter=(arth,cpd05j08,DM,filter,deltadeg) -filter=(arth,cpd05j08,DM,filter,size_x_deltadeg)
SET allfilters3=-filter=(arth,MD,GEO,nofilter,deltadeg) -filter=(arth,MD,GEO,nofilter,size_x_deltadeg)  -filter=(arth,cpd05j08,GEO,nofilter,deltadeg) -filter=(arth,cpd05j08,GEO,nofilter,size_x_deltadeg)
SET allfilters4=-filter=(arth,MD,DM,nofilter,deltadeg) -filter=(arth,MD,DM,nofilter,size_x_deltadeg)  -filter=(arth,cpd05j08,DM,nofilter,deltadeg) -filter=(arth,cpd05j08,DM,nofilter,size_x_deltadeg)

ECHO GEO data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,0) -conf=(arth,GEO,3) %allfilters1%  >   ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-01.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,1) -conf=(arth,GEO,3) %allfilters1%  >   ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-02.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,2) -conf=(arth,GEO,3) %allfilters1%   >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-03.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,3) -conf=(arth,GEO,0) -conf=(arth,GEO,1) -conf=(arth,GEO,2)  -conf=(arth,GEO,4) %allfilters1%   >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-04.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,4) -conf=(arth,GEO,3) %allfilters1%   >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-05.txt

ECHO DM data filter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,0) %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-11.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,1) -conf=(arth,DM,2) %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-12.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,2)  %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-13.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,3) %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-15.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,4) %allfilters2%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-15.txt

ECHO GEO data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,0) -conf=(arth,GEO,3) %allfilters3% >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-21.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,1) -conf=(arth,GEO,3) %allfilters3%>   ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-22.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,2) -conf=(arth,GEO,3) %allfilters3% >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-23.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,3) -conf=(arth,GEO,0) -conf=(arth,GEO,1) -conf=(arth,GEO,2)  -conf=(arth,GEO,4) %allfilters3% >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-24.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,GEO,4) -conf=(arth,GEO,3) %allfilters3% >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-25.txt

ECHO DM data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,0) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-31.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,1) -conf=(arth,DM,2) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-32.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,2) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-33.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,3) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-34.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,4) %allfilters4%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-35.txt

::
SET allfilters5=-filter=(arth,MD,CMAP,filter,deltadeg) -filter=(arth,MD,CMAP,filter,size_x_deltadeg)  -filter=(arth,cpd05j08,CMAP,filter,deltadeg) -filter=(arth,cpd05j08,CMAP,filter,size_x_deltadeg)
SET allfilters6=-filter=(arth,MD,L1000,filter,deltadeg) -filter=(arth,MD,L1000,filter,size_x_deltadeg)  -filter=(arth,cpd05j08,L1000,filter,deltadeg) -filter=(arth,cpd05j08,L1000,filter,size_x_deltadeg)
SET allfilters7=-filter=(arth,MD,CMAP,nofilter,deltadeg) -filter=(arth,MD,CMAP,nofilter,size_x_deltadeg)  -filter=(arth,cpd05j08,CMAP,nofilter,deltadeg) -filter=(arth,cpd05j08,CMAP,nofilter,size_x_deltadeg)
SET allfilters8=-filter=(arth,MD,L1000,nofilter,deltadeg) -filter=(arth,MD,L1000,nofilter,size_x_deltadeg)  -filter=(arth,cpd05j08,L1000,nofilter,deltadeg) -filter=(arth,cpd05j08,L1000,nofilter,size_x_deltadeg)

ECHO CMAPupdown data filter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,0) %allfilters5%  >   ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-41.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,1) %allfilters5%  >   ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-42.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,2) %allfilters5%   >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-43.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,3) %allfilters5%   >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-44.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPup,4) %allfilters5%   >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-45.txt

ECHO L1000updown data filter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,0) -conf=(arth,L1000updown,2) %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-51.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,1) -conf=(arth,L1000updown,2)  %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-52.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,2) -conf=(arth,L1000updown,0) -conf=(arth,L1000updown,1) %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-53.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,3) %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-55.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,4) %allfilters6%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-55.txt

ECHO CMAPupdown data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,0) %allfilters7% >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-61.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,1) %allfilters7%>   ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-62.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,2) %allfilters7% >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-63.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,3) %allfilters7% >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-64.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPup,4) %allfilters7% >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-65.txt

ECHO L1000updown data nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,0) -conf=(arth,L1000updown,2) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-71.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,1) -conf=(arth,L1000updown,2) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-72.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,2)  -conf=(arth,L1000updown,0) -conf=(arth,L1000updown,1) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-73.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,3) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-74.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,4) %allfilters8%  >  ./modulation-arthritis-results-pval-nofda-posonly/merge-filter-arth-2021-02-03-75.txt
