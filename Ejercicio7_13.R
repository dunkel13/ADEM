library(readxl)
acuicultura <- read_excel("Downloads/acuicultura.xls")

corrplot::corrplot(cor(acuicultura), method = 'ellipse', order = 'AOE', type = 'upper',addCoef.col ='black', number.cex = 0.8)
colMeans(acuicultura)
> acp_acuicultura = princomp(acuicultura, cor = T)
> summary(acp_acuicultura)
Importance of components:
                          Comp.1    Comp.2    Comp.3     Comp.4     Comp.5
Standard deviation     2.0525859 1.5466377 1.2339967 0.97538843 0.68779629
Proportion of Variance 0.4213109 0.2392088 0.1522748 0.09513826 0.04730637
Cumulative Proportion  0.4213109 0.6605197 0.8127945 0.90793277 0.95523914
                           Comp.6      Comp.7      Comp.8     Comp.9      Comp.10
Standard deviation     0.54237845 0.313718405 0.187290627 0.14118569 1.949587e-03
Proportion of Variance 0.02941744 0.009841924 0.003507778 0.00199334 3.800889e-07
Cumulative Proportion  0.98465658 0.994498502 0.998006280 0.99999962 1.000000e+00
> acp_acuicultura$loadings

Loadings:
         Comp.1 Comp.2 Comp.3 Comp.4 Comp.5 Comp.6 Comp.7 Comp.8 Comp.9 Comp.10
PISCINA          0.141  0.632  0.398  0.628  0.135                             
dia      -0.449  0.155                      -0.189 -0.851                      
OXIGESUP -0.427 -0.242         0.105        -0.403  0.280  0.538  0.455        
OXIGEFON -0.430 -0.223         0.169  0.140 -0.358  0.294 -0.597 -0.379        
TEMPSUP  -0.450         0.139 -0.198 -0.143  0.419  0.147  0.430 -0.579        
TEMPFON  -0.439         0.187 -0.229         0.491        -0.399  0.557        
SALINSUP -0.103  0.605 -0.153 -0.172  0.141 -0.103  0.200               -0.707 
SALINFON -0.103  0.605 -0.153 -0.172  0.141 -0.103  0.201                0.707 
TRANSP           0.212  0.667        -0.585 -0.401                             
NIVEL    -0.115  0.265 -0.213  0.803 -0.405  0.237                             

               Comp.1 Comp.2 Comp.3 Comp.4 Comp.5 Comp.6 Comp.7 Comp.8 Comp.9
SS loadings       1.0    1.0    1.0    1.0    1.0    1.0    1.0    1.0    1.0
Proportion Var    0.1    0.1    0.1    0.1    0.1    0.1    0.1    0.1    0.1
Cumulative Var    0.1    0.2    0.3    0.4    0.5    0.6    0.7    0.8    0.9
               Comp.10
SS loadings        1.0
Proportion Var     0.1
Cumulative Var     1.0

ggpubr::ggdensity(acp_acuicultura$scores[,1], main = "Density plot of Comp.1", xlab = "Comp.1")
ggpubr::ggqqplot(acp_acuicultura$scores[,1])   
> stats::shapiro.test(acp_acuicultura$scores[,1])

	Shapiro-Wilk normality test

data:  acp_acuicultura$scores[, 1]
W = 0.91071, p-value = 4.748e-08
