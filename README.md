## Snakemake workflow: 16S rRNA-seq for gastric microbiota

[![Snakemake](https://img.shields.io/badge/snakemake-≥5.7.0-brightgreen.svg)](https://snakemake.bitbucket.io)

This is using the standard Snakemake workflow template.
Make sure codes are in the respective folders under `workflow/`, i.e. `scripts`, `rules`, and `envs`. Define the entry point of the workflow in the `Snakefile` and the main configuration in the `./config/16S-rRNA-seq.yaml` file.

## Project
rRNA gene sequencing of the gastric microbiota of mice

The goal of the rRNA gene sequencing was two-fold: 1) to assess potential effects of the gastrin transgene on the gastric microbiota in INS-GAS mice and 2) to address the potential effects of iron deficiency on the gastric microbiota in INS-GAS mice. Collectively, the rationale of this work was to assess the contribution of the gastric microbiota in the development of precancerous lesions that occur in INS-GAS mice due to the presence of the gastrin transgene as well as iron deficiency.

## Authors

* chaodi (dic@chop.edu)

## Usage
Running on new respublica by:
snakemake --latency-wait 10 -j 10 -p -c "sbatch --job-name={params.jobName} --mem={params.mem} -c {threads} --time=360 -e sbatch/{params.jobName}.e -o sbatch/{params.jobName}.o"

## Workflow
![alt text](https://github.com/chaodi51/16S_rRNAseq_gastric/blob/master/workflow/DAG.png?raw=true)
