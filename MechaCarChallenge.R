library(tidyverse)

# PART 1
# read in data
car_data <- read_csv('Starter_Code/MechaCar_mpg.csv')

# run linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_data) %>% summary()

#R-squared = 0.7149; p-value = 5.35e-11

# PART 2
coil_data <- read_csv('Starter_Code/Suspension_Coil.csv')

#create total_summary df
total_summary <- coil_data %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))


# create summary by lot

lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#PART 3
?t.test()

#T-Test across all lots compared to population mean
t.test(coil_data$PSI, mu=1500)
# p-value = 0.06028. Assuming threshold of 0.05, 
# fail to reject null hypothesis (i.e. no significant difference between sample and pop mean)

#T-Test for lot1 compared to population mean
lot1_data <- subset(coil_data, Manufacturing_Lot == 'Lot1')
lot1_data$PSI %>% t.test(mu=1500)
# p-value = 1. Assuming threshold of 0.05, 
# fail to reject null hypothesis (i.e. no significant difference between sample and pop mean)

#T-Test for lot2 compared to population mean
lot2_data <- subset(coil_data, Manufacturing_Lot == 'Lot2')
lot2_data$PSI %>% t.test(mu=1500)
# p-value = 0.6072. Assuming threshold of 0.05, 
# fail to reject null hypothesis (i.e. no significant difference between sample and pop mean)

#T-Test for lot3 compared to population mean
lot3_data <- subset(coil_data, Manufacturing_Lot == 'Lot3')
lot3_data$PSI %>% t.test(mu=1500)
# p-value = 0.04168. Assuming threshold of 0.05, 
# reject null hypothesis (i.e. there is a significant difference between sample and pop mean)














