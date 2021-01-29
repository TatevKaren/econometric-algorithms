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
* Heckman 2-Step for solving selection bias
********************************************************************************************************
heckman ROA (LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale), select (dy = (LnTA GenderIndex NationalityIndex AgeIndex SkillsIndex BoardSize pFemale dFemale)) twostep
margins, dydx(x) atmeans predict(e(0,.))



