#!/bin/bash -ue
sample_id="ggal_liver"
reads="ggal_liver_1.fq ggal_liver_2.fq"
mkdir fastqc_${sample_id}_logs
fastqc -o fastqc_${sample_id}_logs -f fastq -q ${reads} "$sample_id" "$reads"
