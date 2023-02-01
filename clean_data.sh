#!/bin/sh

mkdir -p tmp

# pharmacy `lockout_interval` has non-numerical values '15      15'
gunzip -c physionet.org/files/mimiciv/2.2/hosp/pharmacy.csv.gz > tmp/pharmacy.csv
sed -e 's/,15 *15,/,15,/g' tmp/pharmacy.csv > tmp/pharmacy_tmp1.csv
sed -e 's/n\/a//g' tmp/pharmacy_tmp1.csv > tmp/pharmacy_clean.csv
mv tmp/pharmacy_clean.csv tmp/pharmacy.csv
rm  physionet.org/files/mimiciv/2.2/hosp/pharmacy.csv.gz
gzip -c tmp/pharmacy.csv > physionet.org/files/mimiciv/2.2/hosp/pharmacy.csv.gz

