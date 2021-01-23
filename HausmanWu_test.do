* dependent varaible: ROA
* independent varaibles: LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale

********************************************************************************************************
* Fixed Effect regression
********************************************************************************************************
xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, fe
xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, fe

* storing estimates 
estimates store fixed

********************************************************************************************************
* Random Effect regression
********************************************************************************************************
xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, re
xtreg ROA LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale, re

* storing estimates 
estimates store random

********************************************************************************************************
* Hausman WU test to compare RE and FE
********************************************************************************************************
hausman fixed random
