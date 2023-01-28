indir="data" 
transcriptome="data/ggal_1_48850000_49020000.Ggal71.500bpflank.fa"
outdir="result/bash"

# Qualtiy control
mkdir -p $outdir/fastqc
fastqc `ls $indir/*.fq` -o $outdir/fastqc

# Index
index=$outdir/index
salmon index --threads 4 -t $transcriptome -i $index

# Alignment 
for r1 in `ls $indir/*1.fq`
do
r2=`echo $r1|tr "1" "2"`
sample=`basename $r2 _2.fq`
salmon quant --threads 4 --libType=U -i $index -1 $r1  -2 $r2 -o $outdir/quant/$sample
done
