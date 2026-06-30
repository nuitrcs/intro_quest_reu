# intro_quest_reu
Example jobs for reu quest workshop

# 1. Batch job
- Edit the submission script `submission_script.sh` to have the correct
account (our classroom account) under the SLURM directive `--account`
and the correct path for your clone of this repository. 
- Submit the job using `sbatch submission_script.sh`. It will run the 
python script `hello_world.py`.
- Examine the output

# 2. Quest OnDemand Jupyter job 
- Fill out the Jupyter job submission form with the appropriate 
information. Use the Jupyter root directory `/projects/e53006`. 
- Submit the job and connect to jupyter once it starts. 
- Navigate to your clone of this repository and run the ipython
notebook `happy_face.ipynb`. Use the Jupyter kernel 
`ml-data-science-kernel-py311`. You may need to update the kernel 
by selecting `Kernel` > `Change Kernel` > 
`Python (ml-data-science-kernel-py311)` in the top navigation bar of 
the Jupyter notebook. 
- Add your own code in the empty cells at the bottom of the notebook 
and run it. 

# 3. Look at your Quest job history
- Try running the following commands:

`sacct -X`

`sacct -X --format=jobid,jobname%20,account,partition,submit,elapsed,state,nodelist`

`seff <ONE_OF_YOUR_RECENT_JOBIDS>`

`checkjob <ONE_OF_YOUR_RECENT_JOBIDS>`


