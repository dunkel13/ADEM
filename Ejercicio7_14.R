TablaEjer14 = list(year = c("1920-21", "1921-22", "1922-23", "1923-24", 
                            "1924-25", "1925-26", "1926-27", "1927-28",
                            "1928-29", "1929-30", "1930-31"), 
                   rainNovDec = c(87.9, 89.9, 153, 132.1, 88.8, 220.9, 
                                  117.7, 109, 156.1, 181.5, 181.4), 
                   temp = c(19.6, 15.2, 19.7, 17, 18.3, 
                            17.8, 17.8, 18.3, 17.8, 16.8, 17), 
                   rainJuly = c(1, 90.1, 56.6, 91, 93.7, 106.9, 
                                65.5, 41.8, 57.4, 140.6, 74.3), 
                   radiation = c(1661, 968, 1353, 1293, 1153, 
                                 1286, 1104, 1574, 1222, 902, 1150), 
                   yield = c(28.37, 23.77, 26.04, 25.74, 26.68, 
                             24.29, 28, 28.37, 24.96, 21.66, 24.37)) %>% bind_cols() 

acp_T7_14_S = princomp(TablaEjer14[,-1], cor = F)
> summary(acp_T7_14_S)
Importance of components:
                            Comp.1      Comp.2       Comp.3       Comp.4       Comp.5
Standard deviation     221.4168028 42.63972649 16.821581760 1.070059e+00 6.880559e-01
Proportion of Variance   0.9588733  0.03556059  0.005534441 2.239524e-05 9.259499e-06
Cumulative Proportion    0.9588733  0.99443390  0.999968345 9.999907e-01 1.000000e+00

> acp_T7_14_S$loadings

Loadings:
           Comp.1 Comp.2 Comp.3 Comp.4 Comp.5
rainNovDec         0.954  0.296              
temp                             0.508 -0.861
rainJuly    0.129  0.288 -0.949              
radiation  -0.990        -0.109              
yield                            0.861  0.508

               Comp.1 Comp.2 Comp.3 Comp.4 Comp.5
SS loadings       1.0    1.0    1.0    1.0    1.0
Proportion Var    0.2    0.2    0.2    0.2    0.2
Cumulative Var    0.2    0.4    0.6    0.8    1.0

acp_T7_14_R = princomp(TablaEjer14[,-1], cor = T)
> summary(acp_T7_14_R)
Importance of components:
                        Comp.1    Comp.2     Comp.3     Comp.4     Comp.5
Standard deviation     1.84357 1.0078249 0.54284948 0.40084440 0.36080093
Proportion of Variance 0.67975 0.2031422 0.05893711 0.03213525 0.02603546
Cumulative Proportion  0.67975 0.8828922 0.94182929 0.97396454 1.00000000

> acp_T7_14_R$loadings

Loadings:
           Comp.1 Comp.2 Comp.3 Comp.4 Comp.5
rainNovDec  0.293  0.809  0.231  0.174  0.419
temp       -0.423  0.482 -0.677 -0.338 -0.123
rainJuly    0.500        -0.505  0.585 -0.389
radiation  -0.483  0.286  0.432  0.365 -0.604
yield      -0.502 -0.170 -0.213  0.617  0.541

               Comp.1 Comp.2 Comp.3 Comp.4 Comp.5
SS loadings       1.0    1.0    1.0    1.0    1.0
Proportion Var    0.2    0.2    0.2    0.2    0.2
Cumulative Var    0.2    0.4    0.6    0.8    1.0
