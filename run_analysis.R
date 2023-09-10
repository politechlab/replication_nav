suppressMessages(library(tidyverse))
suppressMessages(library(stargazer))
source("utils.R")





plot_df_cr = read_csv("table_one_column_one.csv",
                      show_col_types = FALSE)

effect  = glm(undermatched ~ treatment+schoolId, 
              data = plot_df_cr, family=quasibinomial())

get_table(effect)
