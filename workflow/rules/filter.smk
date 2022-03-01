rule sample_filter:
    input:
        table = "../results/qiime2/asv/dada2/" + proj_name + "-asv-table.qza",
        metadata_differentials_transgene_gastric_PicoLab_Rodent_Diet = config['metadata_differentials_transgene_gastric_PicoLab_Rodent_Diet'],
        metadata_differentials_transgene_fecal_PicoLab_Rodent_Diet = config['metadata_differentials_transgene_fecal_PicoLab_Rodent_Diet'], 
        metadata_differentials_iron_deficiency_gastric = config['metadata_differentials_iron_deficiency_gastric'],
        metadata_differentials_iron_deficiency_fecal = config['metadata_differentials_iron_deficiency_fecal'],
        metadata_differentials_DCA_gastric_uninfected = config['metadata_differentials_DCA_gastric_uninfected'],
        metadata_differentials_DCA_fecal_uninfected = config['metadata_differentials_DCA_fecal_uninfected'],
        metadata_differentials_infection_gastric_H20 = config['metadata_differentials_infection_gastric_H20'],  
        metadata_differentials_infection_gastric_DCA = config['metadata_differentials_infection_gastric_DCA'],
        metadata_differentials_infection_fecal_H20 = config['metadata_differentials_infection_fecal_H20'],
        metadata_differentials_infection_fecal_DCA = config['metadata_differentials_infection_fecal_DCA'],
        metadata_differentials_4groups_gastric = config['metadata_differentials_4groups_gastric'],
        metadata_differentials_4groups_fecal = config['metadata_differentials_4groups_fecal']

    output:
        table_differentials_transgene_gastric_PicoLab_Rodent_Diet = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_transgene_gastric_PicoLab_Rodent_Diet.qza",
        table_differentials_transgene_fecal_PicoLab_Rodent_Diet = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_transgene_fecal_PicoLab_Rodent_Diet.qza", 
        table_differentials_iron_deficiency_gastric = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_iron_deficiency_gastric.qza",
        table_differentials_iron_deficiency_fecal = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_iron_deficiency_fecal.qza",
        table_differentials_DCA_gastric_uninfected = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_DCA_gastric_uninfected.qza",
        table_differentials_DCA_fecal_uninfected = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_DCA_fecal_uninfected.qza", 
        table_differentials_infection_gastric_H20 = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_infection_gastric_H20.qza",        
        table_differentials_infection_gastric_DCA = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_infection_gastric_DCA.qza",
        table_differentials_infection_fecal_H20 = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_infection_fecal_H20.qza",
        table_differentials_infection_fecal_DCA = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_infection_fecal_DCA.qza",
        table_differentials_4groups_gastric = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_4groups_gastric.qza", 
        table_differentials_4groups_fecal = "../results/qiime2/asv/dada2/filter/" + proj_name + "-asv-table_differentials_4groups_fecal.qza",  
    
    log:
        "logs/" + proj_name + "_sample_filter.log"
    params:
        mem = '20G',
        jobName = proj_name + "_sample_filter"
    shell:
        '''
        conda activate qiime2-2019.7

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_transgene_gastric_PicoLab_Rodent_Diet} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE 'PicoLab Rodent Diet%'" \
            --o-filtered-table {output.table_differentials_transgene_gastric_PicoLab_Rodent_Diet} &> {log}

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_transgene_fecal_PicoLab_Rodent_Diet} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE 'PicoLab Rodent Diet%'" \
            --o-filtered-table {output.table_differentials_transgene_fecal_PicoLab_Rodent_Diet} &>> {log}

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_iron_deficiency_gastric} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE 'TestDiet%'" \
            --o-filtered-table {output.table_differentials_iron_deficiency_gastric} &>> {log}

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_iron_deficiency_fecal} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE 'TestDiet%'" \
            --o-filtered-table {output.table_differentials_iron_deficiency_fecal} &>> {log}

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_DCA_gastric_uninfected} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE '%H20%' AND [Infection]='Uninfected'" \
            --o-filtered-table {output.table_differentials_DCA_gastric_uninfected} &>> {log}

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_DCA_fecal_uninfected} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE '%H20%' AND [Infection]='Uninfected'" \
            --o-filtered-table {output.table_differentials_DCA_fecal_uninfected} &>> {log}

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_infection_gastric_H20} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE 'H20%'" \
            --o-filtered-table {output.table_differentials_infection_gastric_H20} &>> {log}     

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_infection_gastric_DCA} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE '%DCA%'" \
            --o-filtered-table {output.table_differentials_infection_gastric_DCA} &>> {log}

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_infection_fecal_H20} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE 'H20%'" \
            --o-filtered-table {output.table_differentials_infection_fecal_H20} &>> {log}         

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_infection_fecal_DCA} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE '%DCA%'" \
            --o-filtered-table {output.table_differentials_infection_fecal_DCA} &>> {log}  

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_4groups_gastric} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE '%H20%'" \
            --o-filtered-table {output.table_differentials_4groups_gastric} &>> {log}  

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata_differentials_4groups_fecal} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE '%H20%'" \
            --o-filtered-table {output.table_differentials_4groups_fecal} &>> {log}  
        
        conda deactivate
        '''    