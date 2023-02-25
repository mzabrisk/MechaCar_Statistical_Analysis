# MechaCar_Statistical_Analysis

## Project Overview
We are working for a company called AutosRUs, and have asked to perform an analysis of a new line of cars known as the MechaCar. WE are attempting to determine what factors play the largest role in mpg as well as analyze production quality of our suspension coils.

## Linear Regression to Predict MPG


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/linear_regression_to_predict_mpg.png)

Of the variables tested, vehicle_length and ground_clearance were significant. The slope of the line is considereed to be non-zero: since our null hypothesis was that the slope of the line was zero, and our p-value for our model was 5.35e-11, we are able to reject the null hypothesis (i.e. the slope of the line is non-zero). The R-squared value for this model is 0.7149, so it is considered a good model for predicting MechaCar prototype mpg.


## Summary Statistics on Suspension Coils


### Total summary statistics:


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/total_summary.png)

### Summary statistics by lot:


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/lot_summary.png)

Considering the design suspension requirements that the variance of the PSI cannot exceed 100 pounds, across all lots the coils meet this tolerance with a variance of 62.3. However, looking at each lot individually, lot 1 and lot 2 are within the tolerance, but lot 3 is not, with variances of 0.98, 7.47, and 170.29 respectively.


## T-Tests on Suspension Coils


### T-test across all lots:


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/t_test_across_all_lots.png)

Running a t-test using all lots combined as the sample against the population mean of 1500 PSI, the p-value is 0.06028. With significantce threshold of 0.05, we can conclude that there is no difference between the sample PSI and the popultaion PSI.

### T-test for lot 1:


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/lot1_t_test.png)

Running a t-test using lot 1 as the sample against the population mean of 1500 PSI, the p-value is 1. With significantce threshold of 0.05, we can conclude that there is no difference between the sample PSI and the popultaion PSI.



### T-test for lot 2:


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/lot2_t_test.png)

Running a t-test using lot 2 as the sample against the population mean of 1500 PSI, the p-value is 0.6072. With significantce threshold of 0.05, we can conclude that there is no difference between the sample PSI and the popultaion PSI.

### T-test for lot 3: 


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/lot3_t_test.png)

Running a t-test using lot 3 as the sample against the population mean of 1500 PSI, the p-value is 0.04168. With significantce threshold of 0.05, we can conclude that there is a difference between the sample PSI and the popultaion PSI.


## Study Design: MechaCar vs Competition

#QUESTIONS FROM THE CHALLENGE
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:

What metric or metrics are you going to test?

What is the null hypothesis or alternative hypothesis?

What statistical test would you use to test the hypothesis? And why?

What data is needed to run the statistical test?