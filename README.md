This repository contains code to replicate the primary analysis in the paper "Showing High-Achieving College Applicants Past Admissions Outcomes Increases Undermatching", by Sabina Tomkins, Joshua Grossman, Lindsay Page, and Sharad Goel. 

Please use the following citation when referencing this work or data:
CITATION TO BE UPDATED 
. 

We have provided anonymized and aggregated data to replicate the primary analysis shown in Table One. 

#### Code Description

The script , contains the code for the primary analysis, and reads in a file which is in this repository "table\_one\_column\_one.csv".

Requirements: 

   - tidyverse 1.3.1
   - stargazer 5.2.3

To run the code navigate to this directory and execute `Rscript run\_analysis.R`

#### Data Description

In the paper each observation is a student. Here, to preserve anonymity, the level of observation is a high-school year. In this file each row is an observation at a given school in a given year. The value stored in the undermatched column is the proportion of high-achieving students at this school who have undermatched in this year. The value in the column named `treatment` is True if we estimate that students had access to the Scattergram tool, and False otherwise.  


If you have any questions please contact Sabina Tomkins at stomkins@umich.edu. 
