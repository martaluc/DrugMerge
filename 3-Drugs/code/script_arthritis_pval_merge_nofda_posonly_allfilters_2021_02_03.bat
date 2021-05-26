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

ECHO GEO data with positivity on filter+nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=False -conf=(arth,GEO,3)  -conf=(arth,GEO,0) %allfilters%  >   ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-01.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False -conf=(arth,GEO,3)  -conf=(arth,GEO,1) %allfilters%  >   ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-02.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False -conf=(arth,GEO,3)  -conf=(arth,GEO,2) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-03.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False -conf=(arth,GEO,3) -conf=(arth,GEO,0) -conf=(arth,GEO,1) -conf=(arth,GEO,2) -conf=(arth,GEO,4) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-04.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False -conf=(arth,GEO,3) -conf=(arth,GEO,4) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-05.txt

ECHO DM data with positivity on filter+nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,0) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-11.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,1) -conf=(arth,DM,2) -conf=(arth,DM,3) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-12.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,2) -conf=(arth,DM,1) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-13.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,3) -conf=(arth,DM,1) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-14.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,DM,4) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-15.txt


::

ECHO CMAPupdown data with positivity on filter+nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,0) %allfilters%  >   ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-41.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,1) %allfilters%  >   ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-42.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,2) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-43.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPupdown,3) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-44.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,CMAPup,4) %allfilters%   >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-45.txt

ECHO L1000updown data with positivity on filter+nofilter
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,0) -conf=(arth,L1000updown,1) -conf=(arth,L1000updown,2) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-51.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,1) -conf=(arth,L1000updown,0) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-52.txt
drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,2)  -conf=(arth,L1000updown,0) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-53.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,3) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-55.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=(arth,L1000updown,4) %allfilters%  >  ./modulation-arthritis-results-pval-nofda-allposonly/merge-filter-arth-2021-02-03-55.txt
