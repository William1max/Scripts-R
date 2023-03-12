# instalar e carregar o pacote qcc
library(qcc)

# criar um vetor de dados com 20 observações
dados <- c(8.2, 8.0, 7.9, 8.1, 8.3, 8.0, 8.2, 8.1, 8.0, 8.1, 8.3, 8.2, 8.1, 8.0, 8.2, 8.0, 8.1, 8.3, 8.0, 8.1)

# calcular o valor médio (x-barra) e o desvio padrão (R)
x_barra <- mean(dados)
R <- diff(range(dados))

# plotar o gráfico X-Barra / R
qcc(dados, type = "xbar.one", std.dev = R, xlim = c(0, length(dados) + 1),
    ylim = c(min(dados) - 0.5, max(dados) + 0.5), main = "Gráfico X-Barra / R")

# adicionar uma linha central (x-barra) e limites superior e inferior de controle
abline(h = x_barra, col = "red", lty = 2)
abline(h = x_barra + 2.66 * R, col = "blue", lty = 2)
abline(h = x_barra - 2.66 * R, col = "blue", lty = 2)



