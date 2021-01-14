# Econometrics

# Linear Regression Analysis

File name: MultipleLinearRegression_OLS.py, MultipleLinearRegression_example.ipynb
Programming Language: Python, Jupiter Notebook

Linear regression is a linear approach to model the relationship between a scalar response (dependent varaible) and one or more explanatory variables (independent variables). The case of having single explanatory variable, the method is referred as simple linear regression. In case of having multiple explanatory variablea, the method is referred as multiple linear regression. Ordinary least squares (OLS) is a type of linear least squares method for estimating the unknown parameters in a linear regression model. OLS chooses the parameters of a linear function of a set of explanatory variables by using the principle of least squares that minimizes the sum of the squares of the residuals" (differences between the observed dependent variable and those predicted by the linear function). The method is largely applied in Econometrics, Finance, Data Science and other subject areas. 

Publications:

- Kumari, K. and Yadav, S. (2018). Linear regression analysis study. 4101(4): 33
- Kaya U., Neşe. G. (2013). A Study on Multiple Linear Regression Analysis. 1016(106): 234–240


# Event Study Analysis

File name: EventStudy.do
Programming Language: STATA

In this STATA do file you can find the code of an entire event study analysis that investigates the impact of external event on (e.g. Trump Tweets) on the stock prices, where for the stock prices "daily" data frequency has been considered and for the event window intervals of [-100, 100] days & [-250, 250] days have been considered. The analysis contains stock prices for 45 unique company's. Per company we have run OLS regression where company's return has been regressed on the market return and event date. The do file consists of the following parts:

- Running OLS regressions for 45 companies
- Predicting residuals of the OLS model
- Use obtained residuals to build Empirical Model (GARCH(1/1) & ARCH(1/1))
- Obtain test statistics to test the hypothesis with KS-test (part of the Kolmogorov-Smirnov test)

File name: EventStudy.py
Programming Language: Python

Continuation of the STATA part of the analysis. The python file consists of the following parts:

- Obtaining Heteroskedasticity-consistent covariance matrix estimator
- Running another set of OLS regressions
- Obtain test statistics to test the hypothesis with KS-test 
- Determine the p-value of the test

Publications:

- 


