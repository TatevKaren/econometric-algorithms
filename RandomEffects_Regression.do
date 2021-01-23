********************************************************************************************************
* Random Effect regression
********************************************************************************************************
*dependent variable: ROA
*independent variables: LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale

xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, re
xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, re

* storing estimates 
estimates store random
