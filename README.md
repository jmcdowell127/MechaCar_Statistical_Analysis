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

## Deliverable 1
# Technical Analysis
![deliv1](https://user-images.githubusercontent.com/85372441/135176228-35e65e2b-6514-44ab-bb83-94e0224541a6.png)
# Written Summary
1. Both the **_vehicle length_** and **_vehicle ground clearance_** have p-values greater than the significance level, 0.05%, which statisctically provided a non-random amount of variance to the mpg values in the dataset. Meaning, they both had a significant impact on the mpg for the MechaCar prototype. 
2. The slope of this linear model is not considered to be zero because it's p-value of 5.35e-11 is much smaller than the assumed significance level of 0.05%. This indicates that there is sufficient evidence to reject the null hypothesis. 
3. 

