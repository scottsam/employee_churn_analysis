# load any required libraries / additional files here
if(!require("janitor")){install.packages("janitor")}
if(!require("tidyverse")){install.packages("tidyverse")}
if(!require("psych")){install.packages("psych")}
if(!require("gt")){install.packages("gt")}
if(!require("gtExtras")){install.packages("gtExtras")}



library(gt)
library(gtExtras)

library(tidyverse)
library(janitor)
library(dplyr)
library(flextable)

# utility function to save files and figures
save_csv_file<- function(filePath,fileName){
  # Define the file path
  file_path <- filePath
  # Check if the file already exists
  if (!file.exists(file_path)) {
    # Save the file only if it doesn't exist
    write.csv(fileName, file_path, row.names = FALSE)
  } else {
    print("File already exists, skipping save.")
  }
}





#Create nice table function
nice_table <- function(df,tl){
  df <- data.frame(df) |>
    
    
    gt() |>
    
    tab_header(
      title = tl
    ) |>
    
    
    
    tab_style(
        style = cell_borders(color = "transparent"),
        locations = cells_body()
      ) |>
    
    
    tab_style(
      style = cell_text(weight = "bold"),
      locations = cells_column_labels()
    ) |>
    cols_align(
      align = "left",
      columns = 2
    ) |>
    cols_align(
      align = "center",
      columns = 3
      
    ) 
  return(df)
}



#create a function to find the most occurring group
get_mode <- function(x) {
  # Create a frequency table
  modal_table <- table(x)
  
  # Find the value with the highest frequency
  mode_value <- names(modal_table)[which.max(modal_table)]
  
  return(mode_value)
}