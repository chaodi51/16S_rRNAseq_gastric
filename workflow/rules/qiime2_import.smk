rule qiime2_import:
    input:
        manifest
    output:
        q2_import = "../results/qiime2/" + proj_name + "-PE-demux.qza"
    log:
        "logs/qiime2_import.log"
    params:
        mem = '30G',
        jobName = "qiime2_import" 
    threads: 4

    conda: "../envs/qiime2-2020.11.yaml"

    shell:
        '''
        # Imports demultiplexed paired end FASTQ files
        # Needed to create a unique manifest file to map file paths to sample ids
        qiime tools import \
        --type 'SampleData[PairedEndSequencesWithQuality]' \
        --input-path {input} \
        --input-format PairedEndFastqManifestPhred33V2 \
        --output-path {output.q2_import} &> {log}
        '''
