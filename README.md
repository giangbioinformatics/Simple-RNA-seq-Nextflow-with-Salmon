# Simple-Nextflow
Simple Nextflow Pipeline
Require your system has conda installed already
#Step1: Install require packages
Note: 
+ It is not recommended to use in production
+ Nextflow, java and tools in conda should be installed seperately
+ In this examples, to simplify I put all in one :3
```
conda env create -n demo -f env/environment.yml
```
#Step2: Activate environment
```
conda activate demo
```
#Step3:
Run bash script
```
bash rna_seq.sh
```
Run nextflow 
```
nextflow run rna_seq.nf
```