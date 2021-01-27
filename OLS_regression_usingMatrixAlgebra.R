#running OLS regression using matrix algebra
N=nrow(rwrdatafile)
c=rep(1,N)
y = as.matrix(textscr)
X = as.matrix(cbind(c,str,el_pct))
#to produce a vector array with OLS estimates of Beta's
B_hat = solve(t(X) %*% X) %*% t(X) %*% y
B_hat
#3.d)
X2 = as.matrix(el_pct)
X1 = as.matrix(cbind(c,str))
#Projecting el_pct off str P1=X1*(X1'X1)^-1*X1
P1 = X1%*%solve(t(X1)%*%X1)%*%t(X1)
# M1= I1-P1(n=420)
M1 = diag(420)- P1
# for computing residuals from regression of X2 on X1
el_pct_off_str = M1 %*% X2
# computing b2 (ols estimates of regression of textscr on el_pct_off_str)
B_hat_2 = solve(t(X2) %*% M1 %*% X2) %*% (t(X2)%*% M1 %*% y)
B_hat_2