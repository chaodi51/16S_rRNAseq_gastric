prefix = "../results/qiime2/asv/diversity/core-metrics-results/" + proj_name
rule filter_distance_matrix:
    input:
        weighted_unifrac_distance_matrix = prefix + "-weighted-unifrac-distance-matrix.qza",
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
        weighted_unifrac_distance_matrix_transgene_gastric_PicoLab_Rodent_Diet = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_transgene_gastric_PicoLab_Rodent_Diet.qza",
        weighted_unifrac_distance_matrix_transgene_fecal_PicoLab_Rodent_Diet = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_transgene_fecal_PicoLab_Rodent_Diet.qza", 
        weighted_unifrac_distance_matrix_iron_deficiency_gastric = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_iron_deficiency_gastric.qza",
        weighted_unifrac_distance_matrix_iron_deficiency_fecal = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_iron_deficiency_fecal.qza",
        weighted_unifrac_distance_matrix_DCA_gastric_uninfected = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_DCA_gastric_uninfected.qza",
        weighted_unifrac_distance_matrix_DCA_fecal_uninfected = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_DCA_fecal_uninfected.qza", 
        weighted_unifrac_distance_matrix_infection_gastric_H20 = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_infection_gastric_H20.qza",        
        weighted_unifrac_distance_matrix_infection_gastric_DCA = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_infection_gastric_DCA.qza",
        weighted_unifrac_distance_matrix_infection_fecal_H20 = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_infection_fecal_H20.qza",
        weighted_unifrac_distance_matrix_infection_fecal_DCA = "../results/qiime2/asv/dada2/filter/" + proj_name + "-weighted_unifrac_distance_matrix_infection_fecal_DCA.qza"
    
    log:
        "logs/" + proj_name + "_filter_distance_matrix.log"
    params:
        mem = '20G',
        jobName = proj_name + "_filter_distance_matrix"
    shell:
        '''
        conda activate qiime2-2019.7

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_transgene_gastric_PicoLab_Rodent_Diet} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE 'PicoLab Rodent Diet%'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_transgene_gastric_PicoLab_Rodent_Diet} &> {log}

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_transgene_fecal_PicoLab_Rodent_Diet} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE 'PicoLab Rodent Diet%'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_transgene_fecal_PicoLab_Rodent_Diet} &>> {log}

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_iron_deficiency_gastric} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE 'TestDiet%'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_iron_deficiency_gastric} &>> {log}

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_iron_deficiency_fecal} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE 'TestDiet%'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_iron_deficiency_fecal} &>> {log}

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_DCA_gastric_uninfected} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE '%H20%' AND [Infection]='Uninfected'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_DCA_gastric_uninfected} &>> {log}

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_DCA_fecal_uninfected} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE '%H20%' AND [Infection]='Uninfected'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_DCA_fecal_uninfected} &>> {log}

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_infection_gastric_H20} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE 'H20%'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_infection_gastric_H20} &>> {log}     

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_infection_gastric_DCA} \
            --p-where "[Sample_type]='gastric tissue' AND [Diet_Or_Water_treatment] LIKE '%DCA%'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_infection_gastric_DCA} &>> {log}

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_infection_fecal_H20} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE 'H20%'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_infection_fecal_H20} &>> {log}         

        qiime diversity filter-distance-matrix \
            --i-distance-matrix {input.weighted_unifrac_distance_matrix} \
            --m-metadata-file {input.metadata_differentials_infection_fecal_DCA} \
            --p-where "[Sample_type]='fecal pellet' AND [Diet_Or_Water_treatment] LIKE '%DCA%'" \
            --o-filtered-distance-matrix {output.weighted_unifrac_distance_matrix_infection_fecal_DCA} &>> {log}  
        
        conda deactivate
        '''    