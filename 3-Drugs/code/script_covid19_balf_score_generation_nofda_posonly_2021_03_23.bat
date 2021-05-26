@ECHO OFF
::
ECHO score generation GEO filter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,GEO,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-01.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,GEO,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-02.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,GEO,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-03.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,GEO,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-04.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,GEO,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-05.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,GEO,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-06.txt
::
ECHO score generation GEO nofilter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,GEO,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-11.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,GEO,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-12.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,GEO,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-13.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,GEO,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-14.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,GEO,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-15.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,GEO,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-16.txt
::
ECHO score generation DM filter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,DM,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-21.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,DM,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-22.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,DM,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-23.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,DM,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-24.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,DM,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-25.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,DM,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-26.txt
::
ECHO score generation DM nofilter
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,DM,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-31.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,DM,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-32.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,DM,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-33.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,DM,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-34.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,DM,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-35.txt
drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,DM,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-36.txt
::
::ECHO score generation CMAP filter
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,CMAP,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-41.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,CMAP,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-42.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,CMAP,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-43.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,CMAP,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-44.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,CMAP,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-45.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,CMAP,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-46.txt
::
::ECHO score generation CMAP nofilter
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,CMAP,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-51.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,CMAP,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-52.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,CMAP,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-53.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,CMAP,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-54.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,CMAP,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-55.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,CMAP,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-56.txt
::
::ECHO score generation L1000 filter
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,L1000,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-61.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,L1000,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-62.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,L1000,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-63.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,L1000,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-64.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,L1000,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-65.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,L1000,filter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-66.txt
::
::ECHO score generation L1000 nofilter
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,L1000,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-71.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,MD,L1000,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-72.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,L1000,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-73.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd07j08,L1000,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-74.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,L1000,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-75.txt
::drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(balf,cpd05j08,L1000,nofilter)  > ./modulation-covid19-balf-results-score-nofda-posonly/test-filter-covid19-balf-2021-03-23-laptop-76.txt

PAUSE
