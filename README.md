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

Running a t-test using all lots combined as the sample against the population mean of 1500 PSI, the p-value is 0.06028. With significance threshold of 0.05, we can conclude that there is no difference between the sample PSI and the popultaion PSI.

### T-test for lot 1:


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/lot1_t_test.png)

Running a t-test using lot 1 as the sample against the population mean of 1500 PSI, the p-value is 1. With significance threshold of 0.05, we can conclude that there is no difference between the sample PSI and the popultaion PSI.



### T-test for lot 2:


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/lot2_t_test.png)

Running a t-test using lot 2 as the sample against the population mean of 1500 PSI, the p-value is 0.6072. With significance threshold of 0.05, we can conclude that there is no difference between the sample PSI and the popultaion PSI.

### T-test for lot 3: 


![](https://github.com/mzabrisk/MechaCar_Statistical_Analysis/blob/8fd8af1682035397463e24ad362ae621c395a2d5/images/lot3_t_test.png)

Running a t-test using lot 3 as the sample against the population mean of 1500 PSI, the p-value is 0.04168. With significance threshold of 0.05, we can conclude that there is a difference between the sample PSI and the popultaion PSI.


## Study Design: MechaCar vs Competition

For our study, we are most concerned with fuel efficiency, and how our car performs against our competition. We will be testing both city and highway fuel efficiency, measured in miles per gallon (MPG).



**Null Hypothesis 1:** There is no difference in city fuel efficiency between our car and the competition.



**Alternative Hypothesis 1:** There is a difference in city fuel efficience between our car and the competition.



**Null Hypothesis 2:** There is no difference in highway fuel efficiency between our car and the competition.



**Alternative Hypothesis 2:** There is a difference in highway fuel efficience between our car and the competition.



To test each null hypothesis we would use a two-sampled t-test. The two-sample t-test will tell us whether or not there is a statistical difference between a sample consisting of our cars' MPG, vs a sample consisting of our competitors cars' MPG. If we are comparing ourselves to many competitors, we would perform an ANOVA first to determine whether or not performing the t-tests is necessary.


To perform this study and run the statistical tests, we would need to collect MPG data on our cars and our competitors cars in both highway driving and city driving scenarios. More simply, we would collect miles driven and gallons consumed. The city cohort would exclusively drive on city streets, and the highway cohort would exclusively drive on highways.
