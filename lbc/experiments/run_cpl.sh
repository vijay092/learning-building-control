#!/bin/bash --login
#SBATCH --account=aumc
#SBATCH --job-name=cpl
#SBATCH --qos=high
#SBATCH --tasks-per-node=1
#SBATCH --nodes=1

set -x

source env.sh

python run_cpl.py --bsz $BATCH_SIZE --dr=$DR_PROGRAM \
    --lookahead $1 --num-epochs 50 --use-value-function $2 --lr 1 \
    --results-dir $RESDIR
