#!/bin/csh
echo  generation of ranking by pvalue with positive filtering

allfilters1=-filter=\(pbmc,MD,GEO,filter,deltadeg\)-filter=\(pbmc,MD,GEO,filter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,GEO,filter,deltadeg\)-filter=\(pbmc,cpd05j08,GEO,filter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,GEO,filter,deltadeg\)-filter=\(pbmc,cpd07j08,GEO,filter,size_x_deltadeg\)
allfilters2=-filter=\(pbmc,MD,DM,filter,deltadeg\)-filter=\(pbmc,MD,DM,filter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,DM,filter,deltadeg\)-filter=\(pbmc,cpd05j08,DM,filter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,DM,filter,deltadeg\)-filter=\(pbmc,cpd07j08,DM,filter,size_x_deltadeg\)
allfilters3=-filter=\(pbmc,MD,GEO,nofilter,deltadeg\)-filter=\(pbmc,MD,GEO,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,GEO,nofilter,deltadeg\)-filter=\(pbmc,cpd05j08,GEO,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,GEO,nofilter,deltadeg\)-filter=\(pbmc,cpd07j08,GEO,nofilter,size_x_deltadeg\)
allfilters4=-filter=\(pbmc,MD,DM,nofilter,deltadeg\)-filter=\(pbmc,MD,DM,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,DM,nofilter,deltadeg\)-filter=\(pbmc,cpd05j08,DM,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,DM,nofilter,deltadeg\)-filter=\(pbmc,cpd07j08,DM,nofilter,size_x_deltadeg\)
allfilters5=-filter=\(pbmc,MD,CMAP,filter,deltadeg\)-filter=\(pbmc,MD,CMAP,filter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,CMAP,filter,deltadeg\)-filter=\(pbmc,cpd05j08,CMAP,filter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,CMAP,filter,deltadeg\)-filter=\(pbmc,cpd07j08,CMAP,filter,size_x_deltadeg\)
allfilters6=-filter=\(pbmc,MD,L1000,filter,deltadeg\)-filter=\(pbmc,MD,L1000,filter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,L1000,filter,deltadeg\)-filter=\(pbmc,cpd05j08,L1000,filter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,L1000,filter,deltadeg\)-filter=\(pbmc,cpd07j08,L1000,filter,size_x_deltadeg\)
allfilters7=-filter=\(pbmc,MD,CMAP,nofilter,deltadeg\)-filter=\(pbmc,MD,CMAP,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,CMAP,nofilter,deltadeg\)-filter=\(pbmc,cpd05j08,CMAP,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,CMAP,nofilter,deltadeg\)-filter=\(pbmc,cpd07j08,CMAP,nofilter,size_x_deltadeg\)
allfilters8=-filter=\(pbmc,MD,L1000,nofilter,deltadeg\)-filter=\(pbmc,MD,L1000,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd05j08,L1000,nofilter,deltadeg\)-filter=\(pbmc,cpd05j08,L1000,nofilter,size_x_deltadeg\)-filter=\(pbmc,cpd07j08,L1000,nofilter,deltadeg\)-filter=\(pbmc,cpd07j08,L1000,nofilter,size_x_deltadeg\)

allfilters=$allfilters1 $allfilters2 $allfilters3 $allfilters4 $allfilters5 $allfilters6 $allfilters7 $allfilters8$

echo GEO data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,GEO,0\) -conf=\(balf,GEO,0\) -conf=\(cells,GEO,0\) $allfilters  >   ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-01.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,GEO,1\) -conf=\(balf,GEO,1\) -conf=\(cells,GEO,1\) $allfilters  >   ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-02.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,GEO,2\) -conf=\(balf,GEO,2\) -conf=\(cells,GEO,2\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-03.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,GEO,3\) -conf=\(balf,GEO,3\) -conf=\(cells,GEO,3\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-04.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,GEO,4\) -conf=\(balf,GEO,4\) -conf=\(cells,GEO,4\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-05.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,GEO,5\) -conf=\(balf,GEO,5\) -conf=\(cells,GEO,5\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-06.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,GEO,6\) -conf=\(balf,GEO,6\) -conf=\(cells,GEO,6\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-07.txt  


echo DM data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,DM,0\) -conf=\(balf,DM,0\) -conf=\(cells,DM,0\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-11.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,DM,1\) -conf=\(balf,DM,1\) -conf=\(cells,DM,1\)  $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-12.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,DM,2\) -conf=\(balf,DM,2\) -conf=\(cells,DM,2\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-13.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,DM,3\) -conf=\(balf,DM,3\) -conf=\(cells,DM,3\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-14.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,DM,4\) -conf=\(balf,DM,4\) -conf=\(cells,DM,4\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-15.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,DM,5\) -conf=\(balf,DM,5\) -conf=\(cells,DM,5\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-16.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,DM,6\) -conf=\(balf,DM,6\) -conf=\(cells,DM,6\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-17.txt  


#

echo CMAPupdown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,CMAPupdown,0\) -conf=\(balf,CMAPupdown,0\) -conf=\(cells,CMAPupdown,0\) $allfilters  >   ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-41.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,CMAPupdown,1\) -conf=\(balf,CMAPupdown,1\) -conf=\(cells,CMAPupdown,1\) $allfilters  >   ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-42.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,CMAPupdown,2\) -conf=\(balf,CMAPupdown,2\) -conf=\(cells,CMAPupdown,2\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-43.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,CMAPupdown,3\) -conf=\(balf,CMAPupdown,3\) -conf=\(cells,CMAPupdown,3\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-44.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,CMAPupdown,4\) -conf=\(balf,CMAPupdown,4\) -conf=\(cells,CMAPupdown,4\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-45.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,CMAPupdown,5\) -conf=\(balf,CMAPupdown,5\) -conf=\(cells,CMAPupdown,5\)  $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-46.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,CMAPupdown,6\) -conf=\(balf,CMAPupdown,6\) -conf=\(cells,CMAPupdown,6\) $allfilters   >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-47.txt  

echo L1000updown data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,L1000updown,0\) -conf=\(balf,L1000updown,0\) -conf=\(cells,L1000updown,0\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-51.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,L1000updown,1\) -conf=\(balf,L1000updown,1\) -conf=\(cells,L1000updown,1\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-52.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,L1000updown,2\) -conf=\(balf,L1000updown,2\) -conf=\(cells,L1000updown,2\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-53.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,L1000updown,3\) -conf=\(balf,L1000updown,3\) -conf=\(cells,L1000updown,3\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-54.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,L1000updown,4\) -conf=\(balf,L1000updown,4\) -conf=\(cells,L1000updown,4\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-55.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,L1000updown,5\) -conf=\(balf,L1000updown,5\) -conf=\(cells,L1000updown,5\)  $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-56.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=False  -conf=\(pbmc,L1000updown,6\) -conf=\(balf,L1000updown,6\) -conf=\(cells,L1000updown,6\) $allfilters  >  ./modulation-covid19-pbmc-results-pval-nofda-allposonly/merge-filter-covid19-all-2021-03-24-laptop-57.txt  
