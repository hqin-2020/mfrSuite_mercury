#! /bin/bash

#SBATCH --account=pi-lhansen
#SBATCH --job-name=run
#SBATCH --output=./job-outs/WZV/chiUnderline_1.0_a_e_0.15_a_h_0.1_gamma_e_1.0_gamma_h_3.0_psi_e_1.5_psi_h_0.5/run.out
#SBATCH --error=./job-outs/WZV/chiUnderline_1.0_a_e_0.15_a_h_0.1_gamma_e_1.0_gamma_h_3.0_psi_e_1.5_psi_h_0.5/run.err
#SBATCH --time=0-10:00:00
#SBATCH --partition=standard
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G

module load python/booth/3.8/3.8.5

srun python3 /home/qhaomin/mfrSuite_mercury/SolvedModels/run_mfrSuite.py --chiUnderline 1.0 --a_e 0.15 --a_h 0.1 --gamma_e 1.0 --gamma_h 3.0 --psi_e 1.5 --psi_h 0.5                                                     --nV 30 --nVtilde 0 --V_bar 1.0 --Vtilde_bar 0.0 --sigma_V_norm 0.132 --sigma_Vtilde_norm 0.0 
