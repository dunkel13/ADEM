# punto 7 ----
# N2 (\mu, \Sigma)

sample = matrix(c(34,55,12,29,33,75,44,89,
                  89,62,59,69,50,41,88,67), 
                byrow = T, nc = 2)

# mu, Sigma MV, S, A , rho ---- 
# mu 
X_barra = apply(X = sample, MARGIN = 2, FUN = mean); X_barra #c(2.33, 0.75)
quanteda::colMeans(sample)
# Sigma
sigma <- function(x){
  
}
n = nrow(sample) # n = 10
unos = rep(1,n) # 1x10
X = as.matrix(sample) # 10x2
X_barra = t(X_barra)  # 2x1
X_h = X-unos%*%X_barra # 10x2

(1/(n))*t(X_h)%*%X_h
round((1/(n))*t(X_h)%*%X_h,2) # matrix(c(632.61, 155.77, 155.77, 317.61), nr =2)

# Sigma MV insesgado S = 1/(n-1) sum_i=1^n (X_i - Xbarra)(X_i - Xbarra)'
round((1/(n-1))*t(X_h)%*%X_h,2)
Sigma = cov(sample) # matrix(c(722.98, 178.02, 178.02, 362.98), nr =2)

# A
sum(apply(sample, 1, function(x) (x-X_barra)%*%t(x-X_barra)))
1 ->a

# rho correlacion pearson
round(cor(sample),2) # matrix(c(1.00, 0.35, 0.35, 1.00), nr =2)

# Mahalanobis al centroide ----
mahalanobis(x = sample, center = X_barra, cov = Sigma)

# C Mahalanobis entre observaciones ----
as.dist(apply(sample, 1, function(x) mahalanobis(sample, x, cov = cov(sample))))

### Punto 17
X_barra = c(4.2,4,3.8,4.8)
S = matrix(c(0.7,0.9,-0.1,0.2,0.9,1.4,0,0.3,-0.1,0,1,0.4,0.2,0.3,0.4,0.7), nr = 4)

C = matrix(c(1,0,-1,0,0,1,0,-1),nr =2, byrow = T)

C%*%X_barra

C %*%S%*%t(C)
n = 36

T2 = n*(t(C%*%X_barra) %*% solve(C %*%S%*%t(C)) %*% (C%*%X_barra))

qf(p = 0.05, df1 = 2, df2 = 34, lower.tail = F)
qf(p = 0.05, df1 = 2, df2 = 26, lower.tail = F)
