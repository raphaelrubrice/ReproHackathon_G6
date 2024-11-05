process counting {
    publishDir "results/counting", mode: 'link'

    input:
    file annot_file
    file bam_files

    output:
    file "*.txt"

    script:
    """
    featureCounts--extraAttributes Name-t gene-g ID-F GTF-T $task.cpus -a $annot_file -o $bam_files
    """
}