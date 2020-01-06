#!/bin/bash

. /u/local/Modules/default/init/modules.sh
module load bwa
bwa mem toy.ref.fasta toy.reads.fastq > toy.reads.bwa.sam


sleep 90s
