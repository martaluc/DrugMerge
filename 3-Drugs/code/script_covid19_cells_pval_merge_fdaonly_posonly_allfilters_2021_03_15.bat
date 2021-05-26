@ECHO OFF
ECHO  generation of ranking by pvalue with positive filtering

SET allfilters1=-filter=(cells,MD,GEO,filter,deltadeg) -filter=(cells,MD,GEO,filter,size_x_deltadeg)  -filter=(cells,cpd05j08,GEO,filter,deltadeg) -filter=(cells,cpd05j08,GEO,filter,size_x_deltadeg) -filter=(cells,cpd07j08,GEO,filter,deltadeg) -filter=(cells,cpd07j08,GEO,filter,size_x_deltadeg)
SET allfilters2=-filter=(cells,MD,DM,filter,deltadeg) -filter=(cells,MD,DM,filter,size_x_deltadeg)  -filter=(cells,cpd05j08,DM,filter,deltadeg) -filter=(cells,cpd05j08,DM,filter,size_x_deltadeg) -filter=(cells,cpd07j08,DM,filter,deltadeg) -filter=(cells,cpd07j08,DM,filter,size_x_deltadeg)
SET allfilters3=-filter=(cells,MD,GEO,nofilter,deltadeg) -filter=(cells,MD,GEO,nofilter,size_x_deltadeg)  -filter=(cells,cpd05j08,GEO,nofilter,deltadeg) -filter=(cells,cpd05j08,GEO,nofilter,size_x_deltadeg) -filter=(cells,cpd07j08,GEO,nofilter,deltadeg) -filter=(cells,cpd07j08,GEO,nofilter,size_x_deltadeg)
SET allfilters4=-filter=(cells,MD,DM,nofilter,deltadeg) -filter=(cells,MD,DM,nofilter,size_x_deltadeg)  -filter=(cells,cpd05j08,DM,nofilter,deltadeg) -filter=(cells,cpd05j08,DM,nofilter,size_x_deltadeg) -filter=(cells,cpd07j08,DM,nofilter,deltadeg) -filter=(cells,cpd07j08,DM,nofilter,size_x_deltadeg)
SET allfilters5=-filter=(cells,MD,CMAP,filter,deltadeg) -filter=(cells,MD,CMAP,filter,size_x_deltadeg)  -filter=(cells,cpd05j08,CMAP,filter,deltadeg) -filter=(cells,cpd05j08,CMAP,filter,size_x_deltadeg) -filter=(cells,cpd07j08,CMAP,filter,deltadeg) -filter=(cells,cpd07j08,CMAP,filter,size_x_deltadeg)
SET allfilters6=-filter=(cells,MD,L1000,filter,deltadeg) -filter=(cells,MD,L1000,filter,size_x_deltadeg)  -filter=(cells,cpd05j08,L1000,filter,deltadeg) -filter=(cells,cpd05j08,L1000,filter,size_x_deltadeg) -filter=(cells,cpd07j08,L1000,filter,deltadeg) -filter=(cells,cpd07j08,L1000,filter,size_x_deltadeg)
SET allfilters7=-filter=(cells,MD,CMAP,nofilter,deltadeg) -filter=(cells,MD,CMAP,nofilter,size_x_deltadeg)  -filter=(cells,cpd05j08,CMAP,nofilter,deltadeg) -filter=(cells,cpd05j08,CMAP,nofilter,size_x_deltadeg) -filter=(cells,cpd07j08,CMAP,nofilter,deltadeg) -filter=(cells,cpd07j08,CMAP,nofilter,size_x_deltadeg)
SET allfilters8=-filter=(cells,MD,L1000,nofilter,deltadeg) -filter=(cells,MD,L1000,nofilter,size_x_deltadeg)  -filter=(cells,cpd05j08,L1000,nofilter,deltadeg) -filter=(cells,cpd05j08,L1000,nofilter,size_x_deltadeg) -filter=(cells,cpd07j08,L1000,nofilter,deltadeg) -filter=(cells,cpd07j08,L1000,nofilter,size_x_deltadeg)

SET allfilters=%allfilters1% %allfilters2% %allfilters3% %allfilters4% %allfilters5% %allfilters6% %allfilters7% %allfilters8%

ECHO GEO data filter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,0) -conf=(cells,GEO,2) %allfilters%  >   ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-01.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,1) %allfilters%  >   ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-02.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,2) %allfilters%   >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-03.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,3) %allfilters%   >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-04.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,4) %allfilters%   >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-05.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,5) %allfilters%   >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-06.txt


ECHO DM data filter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,3) -conf=(cells,DM,2) -conf=(cells,DM,5) -conf=(cells,DM,4) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-11.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,3) -conf=(cells,DM,2) -conf=(cells,DM,5) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-12.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,3) -conf=(cells,DM,2)  %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-13.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,3) -conf=(cells,DM,4) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-14.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,3) -conf=(cells,DM,5) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-15.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,5) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-16.txt

::ECHO GEO data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,0) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-21.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,1) %allfilters%>   ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-22.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,2) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-23.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,3) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-24.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,4) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-25.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,GEO,5) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-26.txt

::ECHO DM data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,0) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-31.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,1) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-32.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,2) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-33.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,3) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-34.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,4) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-35.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,DM,5) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-36.txt

::

ECHO CMAPupdown data filter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,1) -conf=(cells,CMAPupdown,4) -conf=(cells,CMAPupdown,5) %allfilters%  >   ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-41.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,1) -conf=(cells,CMAPupdown,5)  %allfilters%  >   ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-42.txt
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,1) -conf=(cells,CMAPupdown,4) %allfilters%   >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-43.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,3) %allfilters%   >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-44.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,4) %allfilters%   >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-45.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,5) %allfilters%   >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-46.txt

ECHO L1000updown data filter
drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,0) -conf=(cells,L1000updown,1) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-51.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,1) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-52.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,2) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-53.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,3) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-54.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,4) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-55.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,5) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-56.txt

::ECHO CMAPupdown data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,0) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-61.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,1) %allfilters%>   ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-62.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,2) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-63.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,3) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-64.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,4) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-65.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,CMAPupdown,5) %allfilters% >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-66.txt

::ECHO L1000updown data nofilter
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,0) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-71.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,1) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-72.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,2) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-73.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,3) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-74.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,4) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-75.txt
::drugranking.py  --mode=filteronly --fdadrugsonly=True  -conf=(cells,L1000updown,5) %allfilters%  >  ./modulation-covid19-cells-results-pval-fdaonly-allposonly/merge-filter-covid19-cells-2021-03-15-76.txt
