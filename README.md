# Praat text to .csv columns
This is an .r code for split the columns from Praat windows. I assume the users have basic knowledge about R programming.

This idea is inspired by the discussion on https://www.researchgate.net/post/How_can_I_convert_txt_file_into_csv_file_using_R.

Things you should do before running this code.
   1. Collecting data from Praat windows(Show pitch >>> Pitch listing) >>> Save as (.txt; Command+s on Mac). Don't forget saving this file to a specific folder.  
   2. setwd("~......") must change to the path you save your input file. You can get this information through dragging the folder to the terminal on you computer.
