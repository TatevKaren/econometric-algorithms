********************************************************************************************************
* Fixed Effect regression
********************************************************************************************************
xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, fe
xtreg TobinsQ LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, fe

* storing estimates 
estimates store fixed

********************************************************************************************************
* Random Effect regression
********************************************************************************************************
xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, re
xtreg TobinsQ LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, re

* storing estimates 
estimates store random

********************************************************************************************************
* Hausman WU test to compare RE and FE
********************************************************************************************************
hausman fixed random

********************************************************************************************************
* Plotting the results
********************************************************************************************************
*residual plot
rvfplot, yline(0) 

********************************************************************************************************
* Breush pegan test for detecting heteroskedasticity
********************************************************************************************************
*H0: there is no heterskedasticity
estat hettest

********************************************************************************************************
* Heckman 2-Step for solving selection bias
********************************************************************************************************
heckman ROA (LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale), select (dy = (LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale)) twostep
margins, dydx(x) atmeans predict(e(0,.))


