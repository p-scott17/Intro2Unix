#!/bin/bash
##load the modules
. /u/local/Modules/default/init/modules.sh
module load bwa
module load samtools

####perform BWA mapping of raw reads AND convert output to bam file

for reads in *.reads.fastq; do
	echo $reads
	out=`echo $reads | sed 's/.reads.fastq/_rawMap/'`
	echo $out
	bwa mem -M toy.ref.fasta \
	$reads | samtools view -Sb > $out.bam
done
