# ejemplo 3.3.1 ADEM

Tabla_3_1 = data.frame("Medicina_A" = c(1.9,0.8,1.1,0.1,-0.1,4.4,5.5,1.6,4.6,3.4), 
                       "Medicina_B" = c(0.7,-1.6,-0.2,-1.2,-0.1,3.4,3.7,0.8,0.0,2.0))

# X barra
X_barra = apply(Tabla_3_1, MARGIN = 2, FUN = mean); X_barra #c(2.33, 0.75)

# Sigma MV sesgado
n = nrow(Tabla_3_1) # n = 10
unos = rep(1,n) # 1x10
X = as.matrix(Tabla_3_1) # 10x2
X_barra = t(X_barra)  # 2x1
X_h = X-unos%*%X_barra # 10x2

round((1/(n))*t(X_h)%*%X_h,2)

# Sigma MV insesgado S = 1/(n-1) sum_i=1^n (X_i - Xbarra)(X_i - Xbarra)'
round((1/(n-1))*t(X_h)%*%X_h,2)
round(cov(Tabla_3_1),2) # matrix(c(4.01, 2.85, 2.85, 3.2), nr =2)
round(cor(Tabla_3_1),4) # matrix(c(1, 0.7952, 0.7952, 1), nr =2)
# concluye que los medicamentos tiene efectos semejantes sobre los pacientes
