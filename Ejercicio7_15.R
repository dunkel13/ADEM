TablaEjer15 = data.frame("Ventas"= c(126.974,96.933,86.656,63.438,55.264,
                                     50.976,39.069,36.156,35.209,32.416),
                         "Ganancias"= c(4.224,3.835,3.510,3.758,3.939,
                                        1.809,2.946,0.359,2.480,2.413), 
                         row.names = c(c("General Motors", "Ford", "Exxon",
                                         "IBM", "General Electric", "Mobil",
                                         "Philip Morris", "Chysler", "Du Pont", "Texaco")))

> acp_T7_15 = princomp(TablaEjer15, cor = T)
> summary(acp_T7_15)
Importance of components:
                          Comp.1    Comp.2
Standard deviation     1.2946628 0.5690766
Proportion of Variance 0.8380759 0.1619241
Cumulative Proportion  0.8380759 1.0000000
> acp_T7_15$loadings

Loadings:
          Comp.1 Comp.2
Ventas     0.707  0.707
Ganancias  0.707 -0.707

               Comp.1 Comp.2
SS loadings       1.0    1.0
Proportion Var    0.5    0.5
Cumulative Var    0.5    1.0
> acp_T7_15$sdev^2
   Comp.1    Comp.2 
1.6761519 0.3238481 
> acp_T7_15$scores[row.names(acp_T7_15$scores) %in%  "Texaco"]
[1] -1.0249678 -0.3838479
> cor(TablaEjer15$Ventas, acp_T7_15$scores[,1])
[1] 0.9154649
