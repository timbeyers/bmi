#!/bin/bash
echo "Split BAM file into per chromosome BAM files"
echo "Pass first argument as name of BAM file"


for chrom in `seq 1 23` X Y
do
    samtools view -bh $1 chr${chrom} | samtools sort - chr${chrom}
    samtools index chr${chrom}.bam
done




