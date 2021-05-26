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

allfilters=$allfilters1$allfilters2$allfilters3$allfilters4$allfilters5$allfilters6$allfilters7$allfilters8

echo GEO data filter
GEO4=-conf=\(pbmc,GEO,4\) -conf=\(balf,GEO,4\) -conf=\(cells,GEO,4\)
GEO6=-conf=\(pbmc,GEO,6\) -conf=\(balf,GEO,6\)
GEO1=-conf=\(pbmc,GEO,1\) -conf=\(balf,GEO,1\) -conf=\(cells,GEO,1\)
GEO0=-conf=\(pbmc,GEO,0\) -conf=\(balf,GEO,0\) -conf=\(cells,GEO,0\)
GEO3=-conf=\(pbmc,GEO,3\) -conf=\(balf,GEO,3\) -conf=\(cells,GEO,3\)
python drugranking.py  --mode=filteronly --fdadrugsonly=True  $GEO4 $GEO6 $GEO1 $GEO0 $GEO3  $allfilters  >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-01.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  $GEO4 $GEO6 $GEO1 $GEO0  $allfilters  >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-02.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  $GEO4 $GEO6 $GEO1  $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-03.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True  $GEO4 $GEO6  $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-04.txt  

echo DM data filter
python drugranking.py  --mode=filteronly --fdadrugsonly=True -conf=\(pbmc,DM,4\) -conf=\(balf,DM,4\) -conf=\(cells,DM,4\) -conf=\(pbmc,DM,1\) -conf=\(balf,DM,1\) -conf=\(cells,DM,1\)  $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-12.txt  

#

echo CMAPupdown data filter
CMAP0=-conf=\(pbmc,CMAPupdown,0\) -conf=\(balf,CMAPupdown,0\) -conf=\(cells,CMAPupdown,0\)
CMAP1=-conf=\(pbmc,CMAPupdown,1\) -conf=\(balf,CMAPupdown,1\) -conf=\(cells,CMAPupdown,1\)
CMAP2=-conf=\(pbmc,CMAPupdown,2\) -conf=\(balf,CMAPupdown,2\) -conf=\(cells,CMAPupdown,2\)
CMAP3=-conf=\(pbmc,CMAPupdown,3\) -conf=\(balf,CMAPupdown,3\) -conf=\(cells,CMAPupdown,3\)
CMAP4=-conf=\(pbmc,CMAPupdown,4\) -conf=\(balf,CMAPupdown,4\) -conf=\(cells,CMAPupdown,4\)
CMAP5=-conf=\(pbmc,CMAPupdown,5\) -conf=\(balf,CMAPupdown,5\) -conf=\(cells,CMAPupdown,5\)
CMAP6=-conf=\(pbmc,CMAPupdown,6\) -conf=\(balf,CMAPupdown,6\)

python drugranking.py  --mode=filteronly --fdadrugsonly=True $CMAP6 $CMAP1 $CMAP3 $CMAP0 $CMAP5 $CMAP4 $CMAP2   $allfilters  >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-41.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True $CMAP6 $CMAP1 $CMAP3 $CMAP0 $CMAP5 $CMAP4  $allfilters  >   ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-42.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True $CMAP6 $CMAP1 $CMAP3 $CMAP0 $CMAP5  $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-43.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True $CMAP6 $CMAP1 $CMAP3 $CMAP0  $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-44.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True $CMAP6 $CMAP1 $CMAP3  $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-45.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True $CMAP6 $CMAP1  $allfilters   >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-46.txt  

echo L1000updown data filter
L10000=-conf=\(pbmc,L1000updown,0\) -conf=\(balf,L1000updown,0\) -conf=\(cells,L1000updown,0\)
L10001=-conf=\(pbmc,L1000updown,1\) -conf=\(balf,L1000updown,1\) -conf=\(cells,L1000updown,1\)
L10002=-conf=\(pbmc,L1000updown,2\) -conf=\(balf,L1000updown,2\) -conf=\(cells,L1000updown,2\)
L10003=-conf=\(pbmc,L1000updown,3\) -conf=\(balf,L1000updown,3\) -conf=\(cells,L1000updown,3\)
L10004=-conf=\(pbmc,L1000updown,4\) -conf=\(balf,L1000updown,4\) -conf=\(cells,L1000updown,4\)
L10005=-conf=\(pbmc,L1000updown,5\) -conf=\(balf,L1000updown,5\) -conf=\(cells,L1000updown,5\)
L10006=-conf=\(pbmc,L1000updown,6\) -conf=\(balf,L1000updown,6\)
python drugranking.py  --mode=filteronly --fdadrugsonly=True $L10000 $L10004 $L10002  $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-51.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True $L10000 $L10004    $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-52.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True $L10000  $L10002 $allfilters >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-53.txt  
python drugranking.py  --mode=filteronly --fdadrugsonly=True $L10004 $L10002  $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-54.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True $L10000 $L10004 $L10002  $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-55.txt  
#python drugranking.py  --mode=filteronly --fdadrugsonly=True $L10000 $L10004   $allfilters  >  ./modulation-covid19-pbmc-results-pval-fdaonly-allposonly/global-filter-covid19-all-2021-03-25-laptop-56.txt  
