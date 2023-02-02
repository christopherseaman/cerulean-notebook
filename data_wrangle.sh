#!/bin/sh

mkdir -p tmp

# pharmacy `lockout_interval` has non-numerical values '15      15'
# 'n/a' is used for SOME missing values
# 2.1-4 is used for some values
gunzip -c physionet.org/files/mimiciv/2.2/hosp/pharmacy.csv.gz > tmp/pharmacy.csv
sed -e 's/,15 *15,/,15,/g' tmp/pharmacy.csv > tmp/pharmacy_tmp1.csv
sed -e 's/n\/a//g' tmp/pharmacy_tmp1.csv > tmp/pharmacy_tmp2.csv
sed -e 's/,2.1-\d,/,2.1,/g' tmp/pharmacy_tmp2.csv > tmp/pharmacy_tmp3.csv
sed -e 's/,120-180,/,120,/g' tmp/pharmacy_tmp3.csv > tmp/pharmacy_tmp4.csv
mv tmp/pharmacy_tmp4.csv tmp/pharmacy.csv
mv physionet.org/files/mimiciv/2.2/hosp/pharmacy.csv.gz physionet.org/files/mimiciv/2.2/hosp/pharmacy.csv.gz.bak
gzip -c tmp/pharmacy.csv > physionet.org/files/mimiciv/2.2/hosp/pharmacy.csv.gz
