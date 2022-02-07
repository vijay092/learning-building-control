#!/bin/bash --login
#SBATCH --account=aumc
#SBATCH --job-name=cpl
#SBATCH --qos=high
#SBATCH --time=1:00:00
#SBATCH --tasks-per-node=1
#SBATCH --nodes=1

set -x

source env.sh
source shared-env-vars.sh

python run_cpl.py --bsz $BATCH_SIZE --dr=$DR_PROGRAM --dry-run $DRY_RUN \
    --lookahead 12 --num-epochs 25 --use-value-function 0

