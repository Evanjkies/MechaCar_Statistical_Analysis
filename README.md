# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
- Vehicle Length, Ground Clearance, and Intercept all had stitistically significant p-values (below .05)
- The slope of the linear model is not considered to be 0. The slope would only be 0 if all of the mpg outputs were based on pure variance/chance.
- The r-squared value of .6825 suggests that our linear model fits roughly 68% of the data. This model is a decent predictor of mpg in the prototypes, but a higher r-squared value would be more desireable

## Summary Statistics
The summary statistics shown below are for the dataset as a whole and suggests that the design specifications are being met.

![Suspension_Coil_Summary](https://user-images.githubusercontent.com/107013312/191327591-ca122fb7-9311-4114-b28b-f9d3a4d2e1cc.png)

However, when we group the data by lot, as shown below, we see that manufactuing lot 3 is not up to standards. Lot 3 has a variance of ~170psi which is above the 100psi threshold. 

![Suspension_Lot_Summary](https://user-images.githubusercontent.com/107013312/191328048-a2870674-f878-490a-9bcc-7b6caa2cc55e.png)

## T-Tests on Suspension Coils
- When a t-test is performed on the entirety of manufactuing lots, we get a p-value of .06 which just just barely outside of the 95% confidence interval, and due to that, we fail to reject the null hypothesis. 
- In the lot1 t-test we get a p-value of exactly 1 which tells us that the mean of lot 1 is esactly the same as the specified mean in the t-test, which results in failing to reject the null hypothesis.
- In the lot2 t-test we get a p-value of .61 which is outside of the 95% confidence interval, so once again, we fail to reject the null hypothesis
- In the lot3 t-test we get a p-value of .042 which is within the 95% confidence interval, which means we can reject the null hypothesis that there is no statistical difference between the mean of this manufactuing lot and the expected mean on 1500 psi.

## Study Design: MechaCar vs Competition
