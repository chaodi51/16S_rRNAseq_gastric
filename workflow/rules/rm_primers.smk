rule rm_primers:
    input:
        q2_import = "../results/qiime2/" + proj_name + "-PE-demux.qza"
    output:
        q2_primerRM = "../results/qiime2/" + proj_name + "-PE-demux-noprimer.qza",
        q2_raw_viz = "../results/qiime2/" + proj_name + "-PE-demux.qzv",
        q2_primerRM_viz = "../results/qiime2/" + proj_name + "-PE-demux-noprimer.qzv"
    log:
        "logs/qiime2_rm_primers.log"
    params:
        mem = '20G',
        jobName = "qiime2_rm_primer" 
    threads: 8
    shell:
        '''
        qiime cutadapt trim-paired \
            --p-cores {threads} \
            --i-demultiplexed-sequences {input.q2_import} \
            --p-front-f {config[primerF]} \
            --p-front-r {config[primerR]} \
            --p-error-rate {config[primer_err]} \
            --p-overlap {config[primer_overlap]} \
            --p-match-read-wildcards \
            --p-match-adapter-wildcards \
            --o-trimmed-sequences {output.q2_primerRM} &> {log}

        qiime demux summarize \
            --i-data {input.q2_import} \
            --o-visualization {output.q2_raw_viz} &>> {log}    

        qiime demux summarize \
            --i-data {output.q2_primerRM} \
            --o-visualization {output.q2_primerRM_viz} &>> {log}
        '''
