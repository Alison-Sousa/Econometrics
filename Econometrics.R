# Gerar dados fictícios
set.seed(42)
area <- rnorm(100, mean = 150, sd = 50)  # Área da casa em metros quadrados
quartos <- sample(2:5, 100, replace = TRUE)  # Número de quartos
localizacao <- factor(sample(c("Centro", "Subúrbio", "Rural"), 100, replace = TRUE))  # Localização da casa
preco <- 50000 + 100 * area + 20000 * quartos + ifelse(localizacao == "Centro", 30000, 0) + rnorm(100, mean = 0, sd = 50000)  # Preço da casa em dólares

# Ajustar o modelo de regressão múltipla
modelo <- lm(preco ~ area + quartos + localizacao)

# Sumário do modelo
summary(modelo)
# Inicie a gravação da saída do console em um arquivo de texto
sink("console_output.txt")

# Realize as operações ou imprima o conteúdo que deseja salvar
print(summary(modelo))

# Finalize a gravação
sink()

