##This is an .r code for split the columns from Praat windows. I assume the users have basic knowledge about R programming.
##This idea is inspired by the discussion on https://www.researchgate.net/post/How_can_I_convert_txt_file_into_csv_file_using_R.
#Things you should do before running this code.
   #1. Collecting data from Praat windows(Show pitch >>> Pitch listing) >>> Save as (.txt; Command+s on Mac). Don't forget saving this file to a specific folder.  
   #2. setwd("~......") must change to the path you save your input file. You can get this information through dragging the folder to the terminal on you computer.

#Set the path
setwd("~/Desktop/2018.Fieldwork/competing.tone_input")
#Input files
FILES <- list.files(pattern = ".txt")

for (i in 1:length(FILES)) {
   FILE=read.table(file=FILES[i],header=T)
   #Write table: You can change the file name through paste0().If you want to have files with row number change row.names = FALSE to row.names = TRUE
   write.table(FILE,file=paste0("~/Desktop/2018.Fieldwork/",sub(".txt","",FILES[i]), ".csv"), row.names = FALSE)
}
#Inspect what you got
head(FILE)
summary(FILE)
##Since the settings of computer of different users might be different, it's possible that this code does not work well on you computer. Don't worry and feel free to email me hutengdai@gamil.com. My working languages includes English and Mandarin.
##Recommended reference: Dai, Huteng. ???Convert Praat Text to .Csv Columns by Using R.??? Feb. 2018.