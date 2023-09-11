This repository contains code to replicate the primary analysis in the paper "Showing High-Achieving College Applicants Past Admissions Outcomes Increases Undermatching"

Please use the following citation when referencing this work or data:
CITATION TO BE UPDATED 
. 

The script , contains the code for the primary analysis, and reads in a file which is in this repository "table\_one\_column\_one.csv".


In the paper each observation is a student. Here, to preserve anonymity, the level of observation is a high-school year. In this file each row is an observation at a given school in a given year. The value stored in the undermatched column is the proportion of students at this school who have undermatched.  


Requirements: 

   - tidyverse 1.3.1
   - stargazer 5.2.3

To run the code navigate to this directory and execute `Rscript run\_analysis.R`

If you have any questions please contact Sabina Tomkins at stomkins@umich.edu. 
