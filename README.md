# MechaCar_Statistical_Analysis

## Overview
AutosRUs' newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress. AutosRUs' upper management has requested the data analytics team to review the production data for insights that may help the manufacturing team. 
For this analysis, I have done the following:
+ Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg(miles per gallon) of MechaCar prototypes.
+ Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
+ Run t-tests to determine if the manufacturing lots are statistically different from the mean population
+ Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis,there is a written summary interpretation of the findings.

## Resources
__Data Source:__ MechaCar_mpg.csv & Suspension_Coil.csv

__Data Tools:__ Libraries - ggplot2, dplyr, and tidyverse

__Software:__ R and RStudio

# Deliverable 1
## Technical Analysis
![deliv1](https://user-images.githubusercontent.com/85372441/135176228-35e65e2b-6514-44ab-bb83-94e0224541a6.png)
## Written Summary
1. Both the **_vehicle length_** and **_vehicle ground clearance_** have p-values greater than the significance level, 0.05%, which statisctically provided a non-random amount of variance to the mpg values in the dataset. Meaning, they both had a significant impact on the mpg for the MechaCar prototype. 
2. The slope of this linear model is not considered to be zero because it's p-value of 5.35e-11 is much smaller than the assumed significance level of 0.05%. This indicates that there is sufficient evidence to reject the null hypothesis. 
3. This linear model effectively predicts mpg of MechaCar prototypes because the R-squared value is ~71% and the adjusted R-squared value is ~ 68%. Meaning, this model accurately predicts the mpg results 68% of the time.

# Deliverable 2 
## Technical Analysis
__Total Summary__
 
 <img width="361" alt="totalSum" src="https://user-images.githubusercontent.com/85372441/136054343-bb3f45d6-c1d6-4c18-a6ae-fafb985d9fdc.png">
 
 
 __Lot Summary__
 
 <img width="463" alt="lotSum" src="https://user-images.githubusercontent.com/85372441/136054488-9dd0dac1-b34a-453f-9a84-7272427fedaa.png">

## Summary Statistics on Suspension Coils
* Since the mean(1498.78) and median(1500) are just about the same, this dataset is evenly distributed. 
* The variance in psi as shown above in the total summary table is ~62.3 psi, which meets the design specification for suspension coils of not exceeding 100 psi.
* The standard deviation is high at ~7.9, indicating that the data is more spread out.
* The variances and standard deviations for both Lot 1 (var=0.98, sd=0.99) and Lot 2 (var=7.47, sd=2.73) are well within the 100 psi variance specification and normal deviation. However, Lot 3 has a much higher variance at ~170.29 which is exceedingly above the requirement level and a standard deviation of ~13.05.

# Deliverable 3
## T-Tests on Suspension Coils
### Statistical Summary
__All Manufacturing Lots:__

<img width="368" alt="ttest_total" src="https://user-images.githubusercontent.com/85372441/136060217-d423e83f-65eb-492c-b2c8-a6ee7ddc8bdc.png">


__Lot 1:__

![lot1](https://user-images.githubusercontent.com/85372441/136060378-ced5c68d-3c8b-4d95-8cfa-59a03129f75a.png)


__Lot 2:__

![lot2](https://user-images.githubusercontent.com/85372441/136060423-c91804c2-8e9f-44aa-890b-78ceb286b510.png)


__Lot 3:__

![lot3](https://user-images.githubusercontent.com/85372441/136060478-ef32fdaa-f2f2-4ba2-8c8d-f68570d58f0a.png)


### Written Summary
* The t-test results from all the lots show a mean psi of 1498.78 with a p-Value of 0.06. Since the p-Value is higher than the significance level of 0.05, the data is normally distributed and there is no sufficient evidence to support rejecting the null hypothesis. So we can conclude that the mean of these three lots are statistically similar to the population mean of 1500.
* The sample mean from Lot 1 is 1500 with a p-Value of 1 that is higher than the significance level of 0.05. Meaning our null hypothesis should be accepted. The mean of Lot 1 is statistically similar to the presumed population mean of 1500.
* The sample mean from Lot 2 is 1500.02 with a p-Value of 0.61 that is higher than signifance level of 0.05. Meaning our null hypothesis should be accepted. The mean of Lot 2 is statistically similar to the presumed population mean of 1500.
* The sample mean from Lot 3 is 1496.14 with a p-Value of 0.04 that is lowerthan the signifance level of 0.05. Meaning our null hypothesis should be rejected. The mean of Lot 3 is not statistically similar to the presumed population mean of 1500.

# Deliverable 4
## Study Design: MechaCar vs Competition
### Metrics:
* __Cost (selling price)__: *Dependent Variable
* __Fuel Efficiency (mpg)__: *Independent Variable
* __Resale Value__: *Independent Variable
* __Maintenance Cost__: *Independent Variable
* __Safety Rating__: *Independent Variable

### Hypothesis 
After determining the key factors:
* __Null Hypothesis (Ho)__: The MechaCar is priced correctly based on its key factors.
* __Alternative Hypothis (Ha)__: The MechaCar is not priced correctly based on its key factors

### Statistical Test
Using a __multiple linear regression__ would be best to determine the factors that have the highest correlation with the cost (selling price). This will allow us to see the combination of factors that have the greatest impact on price.
* The data needed for this statistical test would be to collect the same data metrics we used above for MechaCar from comparable car models. This data should include this years newest models as well as last years models.
