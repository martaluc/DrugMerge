#!/bin/csh
#
echo score generation GEO filter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,GEO,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-01.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,GEO,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-02.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,GEO,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-03.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,GEO,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-04.txt  
#
echo score generation GEO nofilter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,GEO,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-11.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,GEO,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-12.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,GEO,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-13.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,GEO,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-14.txt  
#
echo score generation DM filter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,DM,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-21.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,DM,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-22.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,DM,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-23.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,DM,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-24.txt  
#
echo score generation DM nofilter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,DM,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-31.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,DM,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-32.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,DM,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-33.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,DM,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-34.txt  
#
echo score generation CMAP filter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,CMAP,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-41.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,CMAP,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-42.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,CMAP,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-43.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,CMAP,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-44.txt  
#
echo score generation CMAP nofilter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,CMAP,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-51.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,CMAP,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-52.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,CMAP,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-53.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,CMAP,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-54.txt  
#
echo score generation L1000 filter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,L1000,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-61.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,L1000,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-62.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,L1000,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-63.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,L1000,filter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-64.txt  
#
echo score generation L1000 nofilter
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,L1000,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-71.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,cpd05j08,L1000,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-72.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,L1000,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-73.txt  
python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=\(asth,MD,L1000,nofilter\)  > ./modulation-asthma-results-score-nofda-posonly/test-filter-asth-2021-02-11-74.txt  

