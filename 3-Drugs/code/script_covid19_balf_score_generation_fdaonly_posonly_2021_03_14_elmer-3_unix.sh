#!/bin/csh

#L1000 runs

#cp05j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-01.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd05j08,L1000,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-02.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd05j08,L1000,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-03.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd05j08,L1000,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-04.txt 



#cp07j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd07j08,L1000,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-05.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd07j08,L1000,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-06.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd07j08,L1000,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-07.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd07j08,L1000,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-08.txt 

#MD

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,MD,L1000,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-09.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,MD,L1000,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-10.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,MD,L1000,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-11.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,MD,L1000,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-12.txt 


#cmap runs

#md

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,MD,CMAP,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-13.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,MD,CMAP,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-14.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,MD,CMAP,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-15.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,MD,CMAP,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-16.txt 

#cp07j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd07j08,CMAP,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-17.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd07j08,CMAP,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-18.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd07j08,CMAP,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-19.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd07j08,CMAP,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-20.txt 

#cp05j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd05j08,CMAP,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-21.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd05j08,CMAP,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-22.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd05j08,CMAP,nofilter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-23.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(balf,cpd05j08,CMAP,filter\)  > ./modulation-covid19-balf-results-score-fdaonly-posonly/test-filter-balf-2021-03-15-24.txt 
