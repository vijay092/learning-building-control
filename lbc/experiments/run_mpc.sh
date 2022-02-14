#!/bin/bash --login
#SBATCH --account=aumc
#SBATCH --job-name=mpc
#SBATCH --qos=high
#SBATCH --tasks-per-node=1
#SBATCH --nodes=1

set -x

source env.sh

python run_mpc.py --bsz $BATCH_SIZE --dr $DR_PROGRAM \
    --lookahead=$1 --results-dir $RESDIR

