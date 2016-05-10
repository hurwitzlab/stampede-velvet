#!/bin/bash

set -u

WRAPPERDIR=$( cd "$( dirname "$0" )" && pwd )

DEBUG=''
if [[ -n ${VERBOSE:-''} ]]; then
  DEBUG='--debug'
fi

$WRAPPERDIR/run-velvet.pl -d ${IN_DIR} -o ${OUT_DIR:-"${WRAPPERDIR}/velvet-out"} -s ${HASH_SIZE:-31} -c ${COV_CUTOFF:-"auto"} -e ${EXP_COV:-"auto"} -i ${INS_LENGTH:-''} -r ${READ_TRKG:-''} -m ${MIN_CONTIG_LGTH:-''} -a ${AMOS_FILE:-''} -l ${LONG_COV_CUTOFF:-''} $DEBUG
