#!/bin/csh

#L1000 runs

#cp05j08

#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd05j08,L1000,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-01.txt 

#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd05j08,L1000,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-02.txt 

#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd05j08,L1000,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-03.txt 

#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd05j08,L1000,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-04.txt 



#cp07j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd07j08,L1000,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-05.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd07j08,L1000,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-06.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd07j08,L1000,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-07.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd07j08,L1000,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-08.txt 

#MD

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,MD,L1000,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-09.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,MD,L1000,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-10.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,MD,L1000,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-11.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,MD,L1000,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-12.txt 


#cmap runs

#md

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,MD,CMAP,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-13.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,MD,CMAP,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-14.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,MD,CMAP,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-15.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,MD,CMAP,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-16.txt 

#cp07j08

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd07j08,CMAP,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-17.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd07j08,CMAP,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-18.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd07j08,CMAP,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-19.txt 

python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd07j08,CMAP,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-20.txt 

#cp05j08

#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd05j08,CMAP,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-21.txt 

#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=size_x_deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd05j08,CMAP,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-22.txt 

#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd05j08,CMAP,nofilter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-23.txt 

#python drugranking_by_direction.py --combinations=False --reuse=False  --weights=deltadeg --fdadrugsonly=True  --positiveonly=True  -conf=\(crc,cpd05j08,CMAP,filter\)  > ./modulation-colorectal-cancer-results-score-fdaonly-posonly/test-filter-crc-2021-03-19-24.txt 
