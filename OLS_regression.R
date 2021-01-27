# importing the data note csv ipf txt
rm(list = ls())
rwrdatafile = read.csv("workshop.csv",header = TRUE,sep = "",dec = ".")
save(rwrdatafile, file = "workshop.csv")

# preparing the data for Regression Analysis
N=nrow(rwrdatafile)
k=ncol(rwrdatafile)#for denoting constant term of X
# assigning the ith vector to the name names(rwrdatafile)[i] for all k variables
for(i in 1:k) {
  assign(names(rwrdatafile)[i],rwrdatafile[,i])
}

lwreg1=lm(lw~s+iq+expr+tenure+rns+smsa+mrt)
summary(lwreg1)
#we need the exp of log wage(lw)
wage = exp(lw)
meanofwage = mean(wage)
meanofwage
hist(wage)
#running OLS regression
iqreg2=lm(iq~s+expr+tenure+rns+smsa+mrt+age)
summary(iqreg2)
#for finding n and k
N=nrow(rwrdatafile)
N
#Creating new dummy for notmarried=nmrt note nmrt=1=mrt
#we run the same regression but we add this time regressor nmrt
nmrt=1-mrt
iqreg2e=lm(iq~s+expr+tenure+rns+smsa+nmrt+mrt+age)
summary(iqreg2)

#genereting 2 interaction dummies
mrt_rns = mrt*rns
#dummy for not living in soutern America
nrns = 1-rns
nmrt_nrns = nmrt*nrns

#running second set of regression
iqreg2s=lm(iq~s+expr+tenure+rns+smsa+mrt+mrt_rns+nmrt_nrns+age)
summary(iqreg2s)

#importing data from csv
rm(list = ls())
rwrdatafile = read.csv("labonequestionthreedata.csv",header = TRUE,sep = ",",dec = ".")
save(rwrdatafile, file = "labonequestionthreedata.csv")

# Creating vector objects for variables testscr, str, el_pct
textscr = rwrdatafile[ , 11]
str = rwrdatafile[ , 14]
el_pct = rwrdatafile[ , 16]

