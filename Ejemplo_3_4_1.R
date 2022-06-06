# Ejemplo 3.4.1 ADEM ----
Tabla_3_2 = data.frame("estatura_pulg" = c(69,74,68,70,72,67,66,70,76,68,
                                            72,79,74,67,66,71,74,75,75,76), 
                       "peso_lb" = c(153,175,155,135,172,150,115,137,200,130,
                                      140,265,185,112,140,150,165,185,210,220))
# X barra
X_barra = apply(Tabla_3_2, MARGIN = 2, FUN = mean); X_barra #c(estatura.pulg. = 71.45, peso.lb. = 164.7)
mu_0 = t(c(70,170))
sigma = matrix(c(20,100,100,1000), nr = 2)

n = nrow(Tabla_3_2)
x_h = t(X_barra-mu_0)
x0_2 = n*t(x_h)%*%solve(sigma)%*%x_h

x_0.05_2 = qchisq(p = 0.05, df = 2, lower.tail = F)

if(x0_2>x_0.05_2){cat("Se rechaza H_0: mu = (", mu_0, ") pues X_0^2 = ", x0_2, " > ", x_0.05_2)}else{"No hay evidencia para rechazar H_0"}
