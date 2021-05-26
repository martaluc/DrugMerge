@ECHO OFF
::
ECHO score generation GEO filter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,GEO,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-01.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,GEO,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-02.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,GEO,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-03.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,GEO,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-04.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,GEO,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-05.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,GEO,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-06.txt
::
ECHO score generation GEO nofilter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,GEO,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-11.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,GEO,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-12.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,GEO,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-13.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,GEO,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-14.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,GEO,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-15.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,GEO,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-16.txt
::
ECHO score generation DM filter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,DM,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-21.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,DM,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-22.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,DM,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-23.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,DM,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-24.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,DM,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-25.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,DM,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-26.txt
::
ECHO score generation DM nofilter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,DM,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-31.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,DM,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-32.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,DM,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-33.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,DM,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-34.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,DM,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-35.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,DM,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-36.txt
::
ECHO score generation CMAP filter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,CMAP,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-41.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,CMAP,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-42.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,CMAP,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-43.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,CMAP,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-44.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,CMAP,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-45.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,CMAP,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-46.txt
::
ECHO score generation CMAP nofilter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,CMAP,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-51.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,CMAP,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-52.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,CMAP,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-53.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,CMAP,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-54.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,CMAP,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-55.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,CMAP,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-56.txt
::
ECHO score generation L1000 filter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,L1000,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-61.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,L1000,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-62.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,L1000,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-63.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,L1000,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-64.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,L1000,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-65.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,L1000,filter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-66.txt
::
ECHO score generation L1000 nofilter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,L1000,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-71.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,MD,L1000,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-72.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,L1000,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-73.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd07j08,L1000,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-74.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,L1000,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-75.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=(cells,cpd05j08,L1000,nofilter)  > ./modulation-covid19-cells-results-score-fdaonly-posonly/test-filter-covid19-cells-2021-03-13-76.txt

PAUSE
