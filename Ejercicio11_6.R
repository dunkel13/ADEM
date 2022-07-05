# Ejercicio 8 - punto 6 ----
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

biplot(acp_pizza)
sample_pizza2 = bind_cols(sample_pizza, "clust" = c(rep("pc_g1", 8), rep("pc_g2", 18), rep("pc_g3", 25), rep("pd_g4", 11)))
sample_pizza2 = bind_cols(sample_pizza2, "pfx" = acp_pizza$scores[,1])
sample_pizza2 = bind_cols(sample_pizza2, "pfy" = acp_pizza$scores[,2])

km_pizza = kmeans(sample_pizza, centers = 4)
km_pizza$cluster
sample_pizza2 = bind_cols(sample_pizza2, "k_means" = km_pizza$cluster)


library(factoextra)
fviz_nbclust(x = sample_pizza, FUNcluster = kmeans, method = "wss", k.max = 15, 
             diss = get_dist(sample_pizza, method = "euclidean"), nstart = 50)

library(ggplot2)
p1 <- ggplot(data = sample_pizza2, aes(x = pfx, y = pfy, color = as.factor(clust))) +
        geom_point(size = 3) +
        labs(title = "Agrupamiento usando 1er plano factorial del acp") +
        theme_bw() +
        theme(legend.position = "none")

p2 <- ggplot(data = sample_pizza2, aes(x = pfx, y = pfy, color = as.factor(k_means))) +
        geom_point(size = 3) +
        labs(title = "Agrupación mediante K-means") +
        theme_bw() +
        theme(legend.position = "none")

ggpubr::ggarrange(p1, p2)
