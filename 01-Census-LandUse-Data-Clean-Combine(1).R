#####LOAD ALL PACKAGES#####

#####READ IN DATA#####
library(dplyr)
library(tidyverse)
library(reshape)
library(ggplot2)
library(data.table)

#####MERGA ALL SHEETS#####

#1. Chhatisgarh
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Chhatisgarh")

Chhatisgarh_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Chhatisgarh"),
                 read.csv, header= TRUE))
write.csv(Chhatisgarh_LandUse, "Chattisgarh_Census2011_LandUse.csv")

#2. Madhya Pradesh
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Madhya_Pradesh")

MP_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Madhya_Pradesh"),
                 read.csv, header= TRUE))
write.csv(MP_LandUse, "MP_Census2011_LandUse.csv")

#3. Maharashtra
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Maharashtra")

Maharashtra_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Maharashtra"),
                 read.csv, header= TRUE,  
                 fileEncoding="latin1"))

Maharashtra_LandUse = Maharashtra_LandUse%>%mutate(Village_name = coalesce(Village_name, ï..Village_name))
Maharashtra_LandUse = subset(Maharashtra_LandUse, select = -ï..Village_name)

#Some symbol issue with Maharashtra sheet 

#so combining 2 tables into 1 
#Maharashtra_LandUse <- Maharashtra_LandUse%>% mutate(Village_name = coalesce(X.ÈÀVillage_name, ï..Village_name))

#drop the columns not necessary 
#Maharashtra_LandUse <- subset(Maharashtra_LandUse, select = -c(X.ÈÀVillage_name,
#                                                               ï..Village_name))

write.csv(Maharashtra_LandUse, "Maharashtra_Census2011_LandUse.csv")

#4. Karnataka
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Maharashtra")

Karnataka_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Maharashtra"),
                 read.csv, header= TRUE,  
                 fileEncoding="latin1"))

#so combining 2 tables into 1 
Karnataka_LandUse <- Karnataka_LandUse%>% mutate(Village_name = coalesce(X.ÈÀVillage_name, ï..Village_name))

#drop the columns not necessary 
Karnataka_LandUse <- subset(Karnataka_LandUse, select = -c(X.ÈÀVillage_name,
                                                               ï..Village_name,
                                                           X,X.1,X.2,X.3,X.4,X.5,X.6,
                                                           X.7,X.8,X.9,X.10))

write.csv(Karnataka_LandUse, "Karnataka_Census2011_LandUse.csv")

#5. Kerala
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Kerala")

Kerala_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Kerala"),
                 read.csv, header= TRUE))

write.csv(Kerala_LandUse, "Kerala_Census2011_LandUse.csv")

#6.Assam
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Assam")

Assam_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Assam"),
                 read.csv, header= TRUE))

write.csv(Assam_LandUse, "Assam_Census2011_LandUse.csv")

#7.Arunachal_Pradesh
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Arunachal_Pradesh")

Arunachal_Pradesh_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Arunachal_Pradesh"),
                 read.csv, header= TRUE,
                 fileEncoding="latin1"))

#so combining 2 tables into 1 
Arunachal_Pradesh_LandUse <- Arunachal_Pradesh_LandUse%>% mutate(Village_name = coalesce(X.ÈÀVillage_name, ï..Village_name))


#drop the columns not necessary 
Arunachal_Pradesh_LandUse <- subset(Arunachal_Pradesh_LandUse, select = -c(X.ÈÀVillage_name,
                                                               ï..Village_name))

write.csv(Arunachal_Pradesh_LandUse, "Arunachal_Pradesh_Census2011_LandUse.csv")

#8. Punjab
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Punjab")

Punjab_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Punjab"),
                 read.csv, header= TRUE))
write.csv(Punjab_LandUse, "Punjab_Census2011_LandUse.csv")

#9. Andhra_Pradesh
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Andhra_Pradesh")

Andhra_Pradesh_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Andhra_Pradesh"),
                 read.csv, header= TRUE))
write.csv(Andhra_Pradesh_LandUse, "Andhra_Pradesh_Census2011_LandUse.csv")

#10. Haryana
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Haryana")

Haryana_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Haryana"),
                 read.csv, header= TRUE))
write.csv(Haryana_LandUse, "Haryana_Census2011_LandUse.csv")

#11. Gujarat
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Gujarat")

Gujarat_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Gujarat"),
                 read.csv, header= TRUE))
write.csv(Gujarat_LandUse, "Gujarat_Census2011_LandUse.csv")

#12. Himachal_Pradesh
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Himachal_Pradesh")

Himachal_Pradesh_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Himachal_Pradesh"),
                 read.csv, header= TRUE))
write.csv(Himachal_Pradesh_LandUse, "Himachal_Pradesh_Census2011_LandUse.csv")

#13. Dadra_Nagarhaveli
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Dadra_Nagarhaveli")

Dadra_Nagarhaveli_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Dadra_Nagarhaveli"),
                 read.csv, header= TRUE))
write.csv(Dadra_Nagarhaveli_LandUse, "Dadra_Nagarhaveli_Census2011_LandUse.csv")

#14. Goa
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Goa")

Goa_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Goa"),
                 read.csv, header= TRUE))
write.csv(Goa_LandUse, "Goa_Census2011_LandUse.csv")

#15. Puducherry
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Puducherry")

Puducherry_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Puducherry"),
                 read.csv, header= TRUE))
write.csv(Puducherry_LandUse, "Puducherry_Census2011_LandUse.csv")

#16. Andaman_Nicobar  
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Andaman_Nicobar")

Andaman_Nicobar_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Andaman_Nicobar"),
                 read.csv, header= TRUE))
write.csv(Andaman_Nicobar_LandUse, "Andaman_Nicobar_Census2011_LandUse.csv")

#17. Daman_Diu  
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Daman_Diu")

Daman_Diu_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Daman_Diu"),
                 read.csv, header= TRUE))
write.csv(Daman_Diu_LandUse, "Daman_Diu_Census2011_LandUse.csv")

#18. Chandigarh only has one sheet 

#19. Bihar
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Bihar")

Bihar_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Bihar"),
                 read.csv, header= TRUE))
write.csv(Bihar_LandUse, "Bihar_Census2011_LandUse.csv")

#20. Jammu_Kashmir
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Jammu_Kashmir")

Jammu_Kashmir_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Jammu_Kashmir"),
                 read.csv, header= TRUE))
write.csv(Jammu_Kashmir_LandUse, "Jammu_Kashmir_Census2011_LandUse.csv")

#21. Jharkhand
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Jharkhand")

Jharkhand_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Jharkhand"),
                 read.csv, header= TRUE))
write.csv(Jharkhand_LandUse, "Jharkhand_Census2011_LandUse.csv")

#22. lakshwadeep only one file

#23. Manipur
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Manipur")

Manipur_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Manipur"),
                 read.csv, header= TRUE))
write.csv(Manipur_LandUse, "Manipur_Census2011_LandUse.csv")

#24. Meghalaya
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Meghalaya")

Meghalaya_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Meghalaya"),
                 read.csv, header= TRUE))
write.csv(Meghalaya_LandUse, "Meghalaya_Census2011_LandUse.csv")

#25. Mizoram
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Mizoram")

Mizoram_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Mizoram"),
                 read.csv, header= TRUE))
write.csv(Mizoram_LandUse, "Mizoram_Census2011_LandUse.csv")

#26. Nagaland
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Nagaland")

Nagaland_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Nagaland"),
                 read.csv, header= TRUE))
write.csv(Nagaland_LandUse, "Nagaland_Census2011_LandUse.csv")

#27. NCT_Delhi
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/NCT_Delhi")

NCT_Delhi_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/NCT_Delhi"),
                 read.csv, header= TRUE))
write.csv(NCT_Delhi_LandUse, "NCT_Delhi_Census2011_LandUse.csv")

#28. Odisha
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Odisha")

Odisha_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Odisha"),
                 read.csv, header= TRUE))
write.csv(Odisha_LandUse, "Odisha_Census2011_LandUse.csv")

#29. Rajasthan
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Rajasthan")

Rajasthan_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Rajasthan"),
                 read.csv, header= TRUE))
write.csv(Rajasthan_LandUse, "Rajasthan_Census2011_LandUse.csv")

#30. Sikkim
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Sikkim")

Sikkim_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Sikkim"),
                 read.csv, header= TRUE))
write.csv(Sikkim_LandUse, "Sikkim_Census2011_LandUse.csv")


#31. Tamil_Nadu
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Tamil_Nadu")

Tamil_Nadu_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Tamil_Nadu"),
                 read.csv, header= TRUE))
write.csv(Tamil_Nadu_LandUse, "Tamil_Nadu_Census2011_LandUse.csv")

#32. West Bengal
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/West_Bengal")

West_Bengal_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/West_Bengal"),
                 read.csv, header= TRUE))
write.csv(West_Bengal_LandUse, "West_Bengal_Census2011_LandUse.csv")

#33. Uttarakhand
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Uttarakhand")

Uttarakhand_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Uttarakhand"),
                 read.csv, header= TRUE))
write.csv(Uttarakhand_LandUse, "Uttarakhand_Census2011_LandUse.csv")

#34. Tripura
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Tripura")

Tripura_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Tripura"),
                 read.csv, header= TRUE))
write.csv(Tripura_LandUse, "Tripura_Census2011_LandUse.csv")

#35. Uttar Pradesh 
setwd("/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Uttar_Pradesh")

Uttar_Pradesh_LandUse <- 
  do.call(bind_rows,
          lapply(list.files(path = "/Volumes/PD2/Global_Restoration_potential/Census2011-landUse-CSVFiles/Sheets_For_Analysis/Uttar_Pradesh"),
                 read.csv, header= TRUE,
                 fileEncoding="latin1"))

#clean up issue with file 
Uttar_Pradesh_LandUse = Uttar_Pradesh_LandUse%>%mutate(Village_name = coalesce(Village_name, ï..Village_name))
Uttar_Pradesh_LandUse = subset(Uttar_Pradesh_LandUse, select = -ï..Village_name)

write.csv(Uttar_Pradesh_LandUse, "Uttar_Pradesh_Census2011_LandUse.csv")













