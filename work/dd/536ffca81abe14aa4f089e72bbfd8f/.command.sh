#!/bin/bash -ue
salmon quant --threads 1 --libType=U -i index -1 ggal_liver_1.fq -2 ggal_liver_2.fq -o ggal_liver
