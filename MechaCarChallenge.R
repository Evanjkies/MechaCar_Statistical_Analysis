# DELIVERABLE 1
# Load the dplyr package
library(dplyr)

# Import and read the MechaCar_mpg file as a dataframe
MechaCar_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_Table) #generate multiple regression model

# Use summary() function to determine p-value and r-squared value for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table)) #generate summary statistics


# DELIVERABLE 2
# Import and read Suspension_Coil file as a table
Suspension_Coil_Table <- read.csv(file= 'Suspension_Coil.csv' , check.names=F, stringsAsFactors = F)

# Create a total_summary dataframe using summarize() function
Suspension_Coil_Summary <- Suspension_Coil_Table %>% summarize(Mean=mean(PSI), Median=median(PSI), Std.Dev.=sd(PSI), Variance=var(PSI))

# Create a lot_summary dataframe using the group_by() and summarize() functions to group each manufacturing lot
Suspension_Lot_Summary <- Suspension_Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Std.Dev.=sd(PSI), Varinace=var(PSI))
