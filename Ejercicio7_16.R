possum = DAAG::possum
acp_possum_S = princomp(formula = ~., data = possum[,6:ncol(possum)], 
                        na.action = na.exclude, cor = F)

> summary(acp_possum_S)
Importance of components:
                          Comp.1    Comp.2     Comp.3     Comp.4     Comp.5
Standard deviation     6.7999050 5.0331056 2.69928838 2.16009223 1.73722178
Proportion of Variance 0.4981202 0.2728981 0.07849229 0.05026585 0.03251165
Cumulative Proportion  0.4981202 0.7710183 0.84951059 0.89977644 0.93228809
                           Comp.6     Comp.7     Comp.8      Comp.9
Standard deviation     1.59889905 1.28596768 1.11105856 0.916957422
Proportion of Variance 0.02754042 0.01781511 0.01329849 0.009057885
Cumulative Proportion  0.95982851 0.97764362 0.99094212 1.000000000

> acp_possum_S$loadings

Loadings:
         Comp.1 Comp.2 Comp.3 Comp.4 Comp.5 Comp.6 Comp.7 Comp.8 Comp.9
hdlngth   0.413  0.282  0.339  0.185  0.695  0.277         0.184       
skullw    0.296  0.269  0.540  0.338 -0.519 -0.276  0.259 -0.112       
totlngth  0.518  0.315 -0.648  0.156        -0.226 -0.145 -0.336       
taill            0.251 -0.350        -0.194         0.437  0.753 -0.106
footlgth  0.514 -0.468               -0.336  0.633                     
earconch  0.309 -0.650                0.249 -0.584  0.208  0.172       
eye                                                 0.195 -0.242 -0.942
chest     0.219         0.175 -0.174 -0.177 -0.189 -0.763  0.404 -0.267
belly     0.246  0.178  0.134 -0.891        -0.102  0.239 -0.144       

               Comp.1 Comp.2 Comp.3 Comp.4 Comp.5 Comp.6 Comp.7 Comp.8 Comp.9
SS loadings     1.000  1.000  1.000  1.000  1.000  1.000  1.000  1.000  1.000
Proportion Var  0.111  0.111  0.111  0.111  0.111  0.111  0.111  0.111  0.111
Cumulative Var  0.111  0.222  0.333  0.444  0.556  0.667  0.778  0.889  1.000

acp_possum_R = princomp(formula = ~., data = possum[,6:ncol(possum)], 
                        na.action = na.exclude, cor = T)

> summary(acp_possum_R)
Importance of components:
                          Comp.1    Comp.2     Comp.3     Comp.4     Comp.5     Comp.6
Standard deviation     1.9858729 1.4068546 0.94399072 0.85915143 0.75083196 0.55625841
Proportion of Variance 0.4381879 0.2199155 0.09901316 0.08201569 0.06263874 0.03438038
Cumulative Proportion  0.4381879 0.6581034 0.75711661 0.83913229 0.90177103 0.93615141
                           Comp.7     Comp.8     Comp.9
Standard deviation     0.51648331 0.40478944 0.37950998
Proportion of Variance 0.02963944 0.01820605 0.01600309
Cumulative Proportion  0.96579085 0.98399691 1.00000000

> acp_possum_R$loadings

Loadings:
         Comp.1 Comp.2 Comp.3 Comp.4 Comp.5 Comp.6 Comp.7 Comp.8 Comp.9
hdlngth   0.438         0.139         0.238  0.568  0.448  0.439       
skullw    0.393         0.224  0.324  0.501        -0.617 -0.217       
totlngth  0.423        -0.313 -0.336  0.121         0.329 -0.694       
taill     0.206  0.461 -0.514 -0.384        -0.149 -0.308  0.430  0.176
footlgth  0.280 -0.524        -0.279               -0.204  0.230 -0.686
earconch  0.107 -0.647        -0.261               -0.142         0.693
eye       0.194  0.259  0.748 -0.499 -0.192 -0.222                     
chest     0.411                0.411        -0.720  0.314  0.171       
belly     0.370                0.257 -0.798  0.292 -0.236 -0.110       

               Comp.1 Comp.2 Comp.3 Comp.4 Comp.5 Comp.6 Comp.7 Comp.8 Comp.9
SS loadings     1.000  1.000  1.000  1.000  1.000  1.000  1.000  1.000  1.000
Proportion Var  0.111  0.111  0.111  0.111  0.111  0.111  0.111  0.111  0.111
Cumulative Var  0.111  0.222  0.333  0.444  0.556  0.667  0.778  0.889  1.000

> acp_possum_R$sdev * acp_possum_R$sdev
   Comp.1    Comp.2    Comp.3    Comp.4    Comp.5    Comp.6    Comp.7    Comp.8    Comp.9 
3.9436911 1.9792399 0.8911185 0.7381412 0.5637486 0.3094234 0.2667550 0.1638545 0.1440278 

> cor(acp_possum_R$scores[,2], possum$footlgth, use = "complete")
[1] -0.736967
