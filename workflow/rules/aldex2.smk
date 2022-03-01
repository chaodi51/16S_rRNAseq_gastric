rule aldex2:
  input:
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
    differentials_transgene_gastric_PicoLab_Rodent_Diet  = "../results/qiime2/asv/aldex2/differentials_transgene_gastric_PicoLab_Rodent_Diet/" + proj_name + "-differentials.qza",
    differentials_transgene_gastric_PicoLab_Rodent_Diet_viz = "../results/qiime2/asv/aldex2/differentials_transgene_gastric_PicoLab_Rodent_Diet/" + proj_name + "-differentials.qzv",
    differentials_transgene_gastric_PicoLab_Rodent_Diet_sig = "../results/qiime2/asv/aldex2/differentials_transgene_gastric_PicoLab_Rodent_Diet/" + proj_name + "-differentials-sig.qza",
    differentials_transgene_fecal_PicoLab_Rodent_Diet = "../results/qiime2/asv/aldex2/differentials_transgene_fecal_PicoLab_Rodent_Diet/" + proj_name + "-differentials.qza", 
    differentials_transgene_fecal_PicoLab_Rodent_Diet_viz = "../results/qiime2/asv/aldex2/differentials_transgene_fecal_PicoLab_Rodent_Diet/" + proj_name + "-differentials.qzv",
    differentials_transgene_fecal_PicoLab_Rodent_Diet_sig = "../results/qiime2/asv/aldex2/differentials_transgene_fecal_PicoLab_Rodent_Diet/" + proj_name + "-differentials-sig.qza", 
    differentials_iron_deficiency_gastric = "../results/qiime2/asv/aldex2/differentials_iron_deficiency_gastric/" + proj_name + "-differentials.qza",  
    differentials_iron_deficiency_gastric_viz = "../results/qiime2/asv/aldex2/differentials_iron_deficiency_gastric/" + proj_name + "-differentials.qzv",  
    differentials_iron_deficiency_gastric_sig = "../results/qiime2/asv/aldex2/differentials_iron_deficiency_gastric/" + proj_name + "-differentials-sig.qza",  
    differentials_iron_deficiency_fecal = "../results/qiime2/asv/aldex2/differentials_iron_deficiency_fecal/" + proj_name + "-differentials.qza",  
    differentials_iron_deficiency_fecal_viz = "../results/qiime2/asv/aldex2/differentials_iron_deficiency_fecal/" + proj_name + "-differentials.qzv",  
    differentials_iron_deficiency_fecal_sig = "../results/qiime2/asv/aldex2/differentials_iron_deficiency_fecal/" + proj_name + "-differentials-sig.qza", 
    differentials_DCA_gastric_uninfected = "../results/qiime2/asv/aldex2/differentials_DCA_gastric_uninfected/" + proj_name + "-differentials.qza",  
    differentials_DCA_gastric_uninfected_viz = "../results/qiime2/asv/aldex2/differentials_DCA_gastric_uninfected/" + proj_name + "-differentials.qzv",  
    differentials_DCA_gastric_uninfected_sig = "../results/qiime2/asv/aldex2/differentials_DCA_gastric_uninfected/" + proj_name + "-differentials-sig.qza", 
    differentials_DCA_fecal_uninfected = "../results/qiime2/asv/aldex2/differentials_DCA_fecal_uninfected/" + proj_name + "-differentials.qza",  
    differentials_DCA_fecal_uninfected_viz = "../results/qiime2/asv/aldex2/differentials_DCA_fecal_uninfected/" + proj_name + "-differentials.qzv",  
    differentials_DCA_fecal_uninfected_sig = "../results/qiime2/asv/aldex2/differentials_DCA_fecal_uninfected/" + proj_name + "-differentials-sig.qza", 
    differentials_infection_gastric_H20 = "../results/qiime2/asv/aldex2/differentials_infection_gastric_H20/" + proj_name + "-differentials.qza",  
    differentials_infection_gastric_H20_viz = "../results/qiime2/asv/aldex2/differentials_infection_gastric_H20/" + proj_name + "-differentials.qzv",  
    differentials_infection_gastric_H20_sig = "../results/qiime2/asv/aldex2/differentials_infection_gastric_H20/" + proj_name + "-differentials-sig.qza", 
    differentials_infection_gastric_DCA = "../results/qiime2/asv/aldex2/differentials_infection_gastric_DCA/" + proj_name + "-differentials.qza",  
    differentials_infection_gastric_DCA_viz = "../results/qiime2/asv/aldex2/differentials_infection_gastric_DCA/" + proj_name + "-differentials.qzv",  
    differentials_infection_gastric_DCA_sig = "../results/qiime2/asv/aldex2/differentials_infection_gastric_DCA/" + proj_name + "-differentials-sig.qza", 
    differentials_infection_fecal_H20 = "../results/qiime2/asv/aldex2/differentials_infection_fecal_H20/" + proj_name + "-differentials.qza",  
    differentials_infection_fecal_H20_viz = "../results/qiime2/asv/aldex2/differentials_infection_fecal_H20/" + proj_name + "-differentials.qzv",  
    differentials_infection_fecal_H20_sig = "../results/qiime2/asv/aldex2/differentials_infection_fecal_H20/" + proj_name + "-differentials-sig.qza", 
    differentials_infection_fecal_DCA = "../results/qiime2/asv/aldex2/differentials_infection_fecal_DCA/" + proj_name + "-differentials.qza",  
    differentials_infection_fecal_DCA_viz = "../results/qiime2/asv/aldex2/differentials_infection_fecal_DCA/" + proj_name + "-differentials.qzv",  
    differentials_infection_fecal_DCA_sig = "../results/qiime2/asv/aldex2/differentials_infection_fecal_DCA/" + proj_name + "-differentials-sig.qza", 
    differentials_4groups_gastric = "../results/qiime2/asv/aldex2/differentials_4groups_gastric/" + proj_name + "-differentials.qza",  
    differentials_4groups_gastric_viz = "../results/qiime2/asv/aldex2/differentials_4groups_gastric/" + proj_name + "-differentials.qzv",  
    differentials_4groups_gastric_sig = "../results/qiime2/asv/aldex2/differentials_4groups_gastric/" + proj_name + "-differentials-sig.qza",
    differentials_4groups_fecal = "../results/qiime2/asv/aldex2/differentials_4groups_fecal/" + proj_name + "-differentials.qza",  
    differentials_4groups_fecal_viz = "../results/qiime2/asv/aldex2/differentials_4groups_fecal/" + proj_name + "-differentials.qzv",  
    differentials_4groups_fecal_sig = "../results/qiime2/asv/aldex2/differentials_4groups_fecal/" + proj_name + "-differentials-sig.qza" 

  log:
    "logs/" + proj_name + "_aldex2.log"
  params:
    mem = '10G',
    jobName = proj_name + "_aldex2",

  shell:
    '''
    conda activate qiime2-2019.7
    #1
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_transgene_gastric_PicoLab_Rodent_Diet} \
        --m-metadata-file {input.metadata_differentials_transgene_gastric_PicoLab_Rodent_Diet} \
        --m-metadata-column Mouse_background \
        --o-differentials {output.differentials_transgene_gastric_PicoLab_Rodent_Diet} \
        --verbose &> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_transgene_gastric_PicoLab_Rodent_Diet} \
        --o-visualization {output.differentials_transgene_gastric_PicoLab_Rodent_Diet_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_transgene_gastric_PicoLab_Rodent_Diet} \
        --o-differentials {output.differentials_transgene_gastric_PicoLab_Rodent_Diet_sig} \
        --p-sig-threshold 0.1 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log}    
    #2
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_transgene_fecal_PicoLab_Rodent_Diet} \
        --m-metadata-file {input.metadata_differentials_transgene_fecal_PicoLab_Rodent_Diet} \
        --m-metadata-column Mouse_background \
        --o-differentials {output.differentials_transgene_fecal_PicoLab_Rodent_Diet} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_transgene_fecal_PicoLab_Rodent_Diet} \
        --o-visualization {output.differentials_transgene_fecal_PicoLab_Rodent_Diet_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_transgene_fecal_PicoLab_Rodent_Diet} \
        --o-differentials {output.differentials_transgene_fecal_PicoLab_Rodent_Diet_sig} \
        --p-sig-threshold 0.1 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log}    
    #3
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_iron_deficiency_gastric} \
        --m-metadata-file {input.metadata_differentials_iron_deficiency_gastric} \
        --m-metadata-column Diet_Or_Water_treatment \
        --o-differentials {output.differentials_iron_deficiency_gastric} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_iron_deficiency_gastric} \
        --o-visualization {output.differentials_iron_deficiency_gastric_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_iron_deficiency_gastric} \
        --o-differentials {output.differentials_iron_deficiency_gastric_sig} \
        --p-sig-threshold 0.1 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log}
    #4
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_iron_deficiency_fecal} \
        --m-metadata-file {input.metadata_differentials_iron_deficiency_fecal} \
        --m-metadata-column Diet_Or_Water_treatment \
        --o-differentials {output.differentials_iron_deficiency_fecal} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_iron_deficiency_fecal} \
        --o-visualization {output.differentials_iron_deficiency_fecal_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_iron_deficiency_fecal} \
        --o-differentials {output.differentials_iron_deficiency_fecal_sig} \
        --p-sig-threshold 0.1 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log}  
    #5
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_DCA_gastric_uninfected} \
        --m-metadata-file {input.metadata_differentials_DCA_gastric_uninfected} \
        --m-metadata-column Diet_Or_Water_treatment \
        --o-differentials {output.differentials_DCA_gastric_uninfected} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_DCA_gastric_uninfected} \
        --o-visualization {output.differentials_DCA_gastric_uninfected_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_DCA_gastric_uninfected} \
        --o-differentials {output.differentials_DCA_gastric_uninfected_sig} \
        --p-sig-threshold 0.25 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log}  
    #6
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_DCA_fecal_uninfected} \
        --m-metadata-file {input.metadata_differentials_DCA_fecal_uninfected} \
        --m-metadata-column Diet_Or_Water_treatment \
        --o-differentials {output.differentials_DCA_fecal_uninfected} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_DCA_fecal_uninfected} \
        --o-visualization {output.differentials_DCA_fecal_uninfected_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_DCA_fecal_uninfected} \
        --o-differentials {output.differentials_DCA_fecal_uninfected_sig} \
        --p-sig-threshold 0.5 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log} 
    #7
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_infection_gastric_H20} \
        --m-metadata-file {input.metadata_differentials_infection_gastric_H20} \
        --m-metadata-column Infection \
        --o-differentials {output.differentials_infection_gastric_H20} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_infection_gastric_H20} \
        --o-visualization {output.differentials_infection_gastric_H20_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_infection_gastric_H20} \
        --o-differentials {output.differentials_infection_gastric_H20_sig} \
        --p-sig-threshold 1 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log}
    #8
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_infection_gastric_DCA} \
        --m-metadata-file {input.metadata_differentials_infection_gastric_DCA} \
        --m-metadata-column Infection \
        --o-differentials {output.differentials_infection_gastric_DCA} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_infection_gastric_DCA} \
        --o-visualization {output.differentials_infection_gastric_DCA_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_infection_gastric_DCA} \
        --o-differentials {output.differentials_infection_gastric_DCA_sig} \
        --p-sig-threshold 0.25 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log} 
    #9
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_infection_fecal_H20} \
        --m-metadata-file {input.metadata_differentials_infection_fecal_H20} \
        --m-metadata-column Infection \
        --o-differentials {output.differentials_infection_fecal_H20} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_infection_fecal_H20} \
        --o-visualization {output.differentials_infection_fecal_H20_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_infection_fecal_H20} \
        --o-differentials {output.differentials_infection_fecal_H20_sig} \
        --p-sig-threshold 0.25 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log} 
    #10
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_infection_fecal_DCA} \
        --m-metadata-file {input.metadata_differentials_infection_fecal_DCA} \
        --m-metadata-column Infection \
        --o-differentials {output.differentials_infection_fecal_DCA} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_infection_fecal_DCA} \
        --o-visualization {output.differentials_infection_fecal_DCA_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_infection_fecal_DCA} \
        --o-differentials {output.differentials_infection_fecal_DCA_sig} \
        --p-sig-threshold 0.25 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log}
    #11
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_4groups_gastric} \
        --m-metadata-file {input.metadata_differentials_4groups_gastric} \
        --m-metadata-column Diet_Or_Water_treatment \
        --o-differentials {output.differentials_4groups_gastric} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_4groups_gastric} \
        --o-visualization {output.differentials_4groups_gastric_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_4groups_gastric} \
        --o-differentials {output.differentials_4groups_gastric_sig} \
        --p-sig-threshold 1 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log} 
    #12
    qiime aldex2 aldex2 \
        --i-table {input.table_differentials_4groups_fecal} \
        --m-metadata-file {input.metadata_differentials_4groups_fecal} \
        --m-metadata-column Diet_Or_Water_treatment \
        --o-differentials {output.differentials_4groups_fecal} \
        --verbose &>> {log}
    qiime aldex2 effect-plot \
        --i-table {output.differentials_4groups_fecal} \
        --o-visualization {output.differentials_4groups_fecal_viz} &>> {log}
    qiime aldex2 extract-differences \
        --i-table {output.differentials_4groups_fecal} \
        --o-differentials {output.differentials_4groups_fecal_sig} \
        --p-sig-threshold 0.25 \
        --p-effect-threshold 0 \
        --p-difference-threshold 0 &>> {log} 

    conda deactivate    
    '''