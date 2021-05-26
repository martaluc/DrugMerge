#!/bin/csh
#
echo score generation GEO filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,GEO,filter\) -conf=\(cells,MD,GEO,filter\) -conf=\(cells,cpd07j08,GEO,filter\) > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-01.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,GEO,filter\) -conf=\(cells,MD,GEO,filter\) -conf=\(cells,cpd07j08,GEO,filter\) > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-02.txt  
#
echo score generation GEO nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,GEO,nofilter\) -conf=\(cells,MD,GEO,nofilter\)  -conf=\(cells,cpd07j08,GEO,nofilter\) > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-11.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,GEO,nofilter\) -conf=\(cells,MD,GEO,nofilter\)  -conf=\(cells,cpd07j08,GEO,nofilter\)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-12.txt  
#
echo score generation DM filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,DM,filter\) -conf=\(cells,MD,DM,filter\) -conf=\(cells,cpd07j08,DM,filter\) > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-21.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,DM,filter\) -conf=\(cells,MD,DM,filter\) -conf=\(cells,cpd07j08,DM,filter\)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-22.txt  
#
echo score generation DM nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,DM,nofilter\) -conf=\(cells,MD,DM,nofilter\) -conf=\(cells,cpd07j08,DM,nofilter\) > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-31.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,DM,nofilter\) -conf=\(cells,MD,DM,nofilter\)  -conf=\(cells,cpd07j08,DM,nofilter\) > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-32.txt  
#
echo score generation CMAP filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,CMAP,filter\) -conf=\(cells,MD,CMAP,filter\)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-41.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,CMAP,filter\) -conf=\(cells,MD,CMAP,filter\)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-42.txt  
#
echo score generation CMAP nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,CMAP,nofilter\) -conf=\(cells,MD,CMAP,nofilter\)   > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-51.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,CMAP,nofilter\) -conf=\(cells,MD,CMAP,nofilter\)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-52.txt  
#
echo score generation L1000 filter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,L1000,filter\)    -conf=\(cells,cpd07j08,L1000,filter\) > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-61.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(cells,cpd05j08,L1000,filter\)    -conf=\(cells,cpd07j08,L1000,filter\) > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-62.txt  
#
echo score generation L1000 nofilter
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True   -conf=\(cells,cpd07j08,L1000,nofilter\) -conf=\(cells,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-71.txt  
python drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True   -conf=\(cells,cpd07j08,L1000,nofilter\) -conf=\(cells,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/merge-filter-covid19-cells-2021-03-15-72.txt  


