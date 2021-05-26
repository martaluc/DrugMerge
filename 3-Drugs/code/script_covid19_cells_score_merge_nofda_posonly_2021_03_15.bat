@ECHO OFF
::
ECHO score generation GEO filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,GEO,filter) -conf=(cells,MD,GEO,filter) -conf=(cells,cpd07j08,GEO,filter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-01.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,GEO,filter) -conf=(cells,MD,GEO,filter) -conf=(cells,cpd07j08,GEO,filter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-02.txt
::
ECHO score generation GEO nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,GEO,nofilter) -conf=(cells,MD,GEO,nofilter)  -conf=(cells,cpd07j08,GEO,nofilter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-11.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,GEO,nofilter) -conf=(cells,MD,GEO,nofilter)  -conf=(cells,cpd07j08,GEO,nofilter)  > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-12.txt
::
ECHO score generation DM filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,DM,filter) -conf=(cells,MD,DM,filter) -conf=(cells,cpd07j08,DM,filter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-21.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,DM,filter) -conf=(cells,MD,DM,filter) -conf=(cells,cpd07j08,DM,filter)  > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-22.txt
::
ECHO score generation DM nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,DM,nofilter) -conf=(cells,MD,DM,nofilter) -conf=(cells,cpd07j08,DM,nofilter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-31.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,DM,nofilter) -conf=(cells,MD,DM,nofilter)  -conf=(cells,cpd07j08,DM,nofilter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-32.txt
::
ECHO score generation CMAP filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,CMAP,filter) -conf=(cells,MD,CMAP,filter) -conf=(cells,cpd07j08,CMAP,filter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-41.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,CMAP,filter) -conf=(cells,MD,CMAP,filter) -conf=(cells,cpd07j08,CMAP,filter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-42.txt
::
ECHO score generation CMAP nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,CMAP,nofilter) -conf=(cells,MD,CMAP,nofilter) -conf=(cells,cpd07j08,CMAP,nofilter)  > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-51.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,CMAP,nofilter) -conf=(cells,MD,CMAP,nofilter) -conf=(cells,cpd07j08,CMAP,nofilter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-52.txt
::
ECHO score generation L1000 filter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,L1000,filter)  -conf=(cells,MD,L1000,filter)  -conf=(cells,cpd07j08,L1000,filter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-61.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,cpd05j08,L1000,filter)   -conf=(cells,MD,L1000,filter)  -conf=(cells,cpd07j08,L1000,filter) > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-62.txt
::
ECHO score generation L1000 nofilter
drugranking_by_direction.py --combinations=False --reuse=True  --weights=size_x_deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,MD,L1000,nofilter) -conf=(cells,cpd07j08,L1000,nofilter) -conf=(cells,cpd05j08,L1000,nofilter)  > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-71.txt
drugranking_by_direction.py --combinations=False --reuse=True  --weights=deltadeg --fdadrugsonly=False  --positiveonly=True  -conf=(cells,MD,L1000,nofilter) -conf=(cells,cpd07j08,L1000,nofilter) -conf=(cells,cpd05j08,L1000,nofilter)  > ./modulation-covid19-cells-results-score-nofda-posonly/merge-filter-covid19-cells-2021-03-15-72.txt

PAUSE
