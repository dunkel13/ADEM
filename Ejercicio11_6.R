acp_pizza = princomp(sample_pizza, cor = T)
> summary(acp_pizza)
Importance of components:
                          Comp.1    Comp.2     Comp.3     Comp.4
Standard deviation     2.1013119 1.4462591 0.62077622 0.28825354
Proportion of Variance 0.6307874 0.2988093 0.05505187 0.01187002
Cumulative Proportion  0.6307874 0.9295967 0.98464857 0.99651859
                            Comp.5       Comp.6       Comp.7
Standard deviation     0.152141221 0.0349671442 4.777986e-04
Proportion of Variance 0.003306707 0.0001746716 3.261307e-08
Cumulative Proportion  0.999825296 0.9999999674 1.000000e+00
> acp_pizza$loadings

Loadings:
       Comp.1 Comp.2 Comp.3 Comp.4 Comp.5 Comp.6 Comp.7
MOIS           0.670  0.385  0.209         0.445  0.401
PROT    0.373  0.267 -0.780         0.337         0.260
FAT     0.451 -0.172  0.212  0.492 -0.149 -0.532  0.417
ASH     0.459  0.125        -0.565 -0.669              
SODIUM  0.439 -0.156  0.437 -0.431  0.637              
CARB   -0.406 -0.355        -0.333                0.771
CAL     0.299 -0.534         0.313 -0.101  0.716       

               Comp.1 Comp.2 Comp.3 Comp.4 Comp.5 Comp.6 Comp.7
SS loadings     1.000  1.000  1.000  1.000  1.000  1.000  1.000
Proportion Var  0.143  0.143  0.143  0.143  0.143  0.143  0.143
Cumulative Var  0.143  0.286  0.429  0.571  0.714  0.857  1.000
