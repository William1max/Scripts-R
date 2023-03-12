
library(dendextend)

# criar uma matriz de dados para usar no dendrograma
matriz <- matrix(rnorm(25), nrow = 5)

# criar um objeto de dendrograma com a função hclust
dend <- hclust(dist(matriz))

# calcular o coeficiente de correlação cofenética
cof <- cophenetic(dend)

# plotar o dendrograma com o coeficiente de correlação cofenética
plot(dend, cex = 0.8, main = "Dendrograma com coeficiente de correlação cofenética")
abline(h = cof, lty = 2, col = "red")
