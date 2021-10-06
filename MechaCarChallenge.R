library(dplyr)

## Deliverable 1

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe
mechaCar_tbl <- read.csv(file = 'MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# 5. Perform linear regression. In the lm() function, pass in all 6 variables(columns).
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar_tbl)

# 6. Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar_tbl))

## Deliverable 2

# 2. Import and read in the Suspension_Coil.csv
suspCoil_tbl <- read.csv(file = 'Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function to 
#     get the mean, median, variance, and std deviation of the suspension coil's PSI column
total_summary <- suspCoil_tbl %>% summarize(Mean_PSI = mean(PSI),Median_PSI = median(PSI), Var_PSI = var(PSI), StdDev_PSI = sd(PSI), Num_Coil = n(), .groups = 'keep')

# 4. Create a lot_summary dataframe using group_by() and summarize() functions 
lot_summary <- suspCoil_tbl %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI),Median_PSI = median(PSI), Var_PSI = var(PSI), StdDev_PSI = sd(PSI), Num_Coil = n(), .groups = 'keep')

## Deliverable 3

# 1. Use the t.test() function to determine if the PSI across all manufacturing lots is statistically 
#     different from the population mean of 1,500 pounds per square inch.
t.test(suspCoil_tbl$PSI, mu = 1500)

# 2. Use the t.test() function and its subset() argument to write 3 more RScripts to determine
#     if the PSI for each lot is statistically different from the population mean.
lot1 <- subset(suspCoil_tbl, Manufacturing_Lot=='Lot1')
lot2 <- subset(suspCoil_tbl, Manufacturing_Lot=='Lot2')
lot3 <- subset(suspCoil_tbl, Manufacturing_Lot=='Lot3')

t.test(lot1$PSI,mu = 1500)
t.test(lot2$PSI,mu = 1500)
t.test(lot3$PSI,mu = 1500)
