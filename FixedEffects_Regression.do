********************************************************************************************************
* Fixed Effect regression
********************************************************************************************************
*dependent variable: ROA
*independent variables: LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale

xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, fe
xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, fe

* storing estimates 
estimates store fixed
