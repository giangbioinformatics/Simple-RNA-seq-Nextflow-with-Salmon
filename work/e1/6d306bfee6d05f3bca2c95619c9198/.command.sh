#!/bin/bash -ue
sample_id="ggal_gut"
reads="ggal_gut_1.fq ggal_gut_2.fq"
mkdir fastqc_${sample_id}_logs
fastqc -o fastqc_${sample_id}_logs -f fastq -q ${reads} "$sample_id" "$reads"
