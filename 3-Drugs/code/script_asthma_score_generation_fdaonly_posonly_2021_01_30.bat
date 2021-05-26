@ECHO OFF
::
ECHO score generation GEO filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,GEO,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-01.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,GEO,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-02.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,GEO,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-03.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,GEO,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-04.txt
::
ECHO score generation GEO nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,GEO,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-11.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,GEO,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-12.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,GEO,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-13.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,GEO,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-14.txt
::
ECHO score generation DM filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,DM,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-21.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,DM,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-22.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,DM,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-23.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,DM,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-24.txt
::
ECHO score generation DM nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,DM,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-31.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,DM,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-32.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,DM,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-33.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,DM,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-34.txt
::
ECHO score generation CMAP filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,CMAP,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-41.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,CMAP,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-42.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,CMAP,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-43.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,CMAP,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-44.txt
::
ECHO score generation CMAP nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,CMAP,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-51.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,CMAP,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-52.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,CMAP,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-53.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,CMAP,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-54.txt
::
ECHO score generation L1000 filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,L1000,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-61.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,L1000,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-62.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,L1000,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-63.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,L1000,filter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-64.txt
::
ECHO score generation L1000 nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,L1000,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-71.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,cpd05j08,L1000,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-72.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,L1000,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-73.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(asth,MD,L1000,nofilter)  > ./modulation-asthma-results-score-fdaonly-posonly/test-filter-asth-2021-02-11-74.txt
PAUSE
