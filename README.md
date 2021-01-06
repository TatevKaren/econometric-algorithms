# Econometrics
File name: EventStudy.do
Programming Language: STATA

In this STATA do file you can find the code of an entire event study analysis that investigates the impact of external event on (e.g. Trump Tweets) on the stock prices, where for the stock prices "daily" data frequency has been considered and for the event window intervals of [-100, 100] days & [-250, 250] days have been considered. The analysis contains stock prices for 45 unique company's. Per company we have run OLS regression where company's return has been regressed on the market return and event date. The do file consists of the following parts:

- Running OLS regressions for 45 companies
- Predicting residuals of the OLS model
- Use obtained residuals to build Empirical Model (GARCH(1/1) & ARCH(1/1))
- Obtain test statistics to test the hypothesis with KS-test (part of the Kolmogorov-Smirnov test)

