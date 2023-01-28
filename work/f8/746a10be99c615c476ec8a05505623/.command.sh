#!/bin/bash -ue
salmon quant --threads 1 --libType=U -i index -1 ggal_gut_1.fq -2 ggal_gut_2.fq -o ggal_gut
