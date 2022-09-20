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


# DELIVERABLE 3
# Using the t.test() function, determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500psi
t.test(Suspension_Coil_Table$PSI,mu=1500)

# Write three more RScripts using the t.test() function and its subset() argument to determine if the PSI for each lot is statistically different from the population
lot1 <- subset(Suspension_Coil_Table,Manufacturing_Lot=='Lot1')
lot2 <- subset(Suspension_Coil_Table,Manufacturing_Lot=='Lot2')
lot3 <- subset(Suspension_Coil_Table,Manufacturing_Lot=='Lot3')

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
