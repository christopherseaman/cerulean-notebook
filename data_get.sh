
export $(xargs < .env)

# [Phenotype Annotations for Patient Notes in the MIMIC-III Database](https://physionet.org/content/phenotype-annotations-mimic/1.20.03/)
wget -q -r -N -c -np --user ${PHYSIONET_USERNAME} --password ${PHYSIONET_PASSWORD} https://physionet.org/files/phenotype-annotations-mimic/1.20.03/

# # [MIMIC-IV-Note: Deidentified free-text clinical notes](https://physionet.org/content/mimic-iv-note/2.2/)
wget -q -r -N -c -np --user ${PHYSIONET_USERNAME} --password ${PHYSIONET_PASSWORD} https://physionet.org/files/mimic-iv-note/2.2/

# [MIMIC-IV](https://physionet.org/content/mimiciv/2.2/)
wget -q -r -N -c -np --user ${PHYSIONET_USERNAME} --password ${PHYSIONET_PASSWORD} https://physionet.org/files/mimiciv/2.2/

