#leitura do pacote
library(openair)

#leitura do banco de dados
df <- read.csv2("Seu_arquivo.csv"
                ,sep=";")
 
#conversão do tipo de coluna
df$date <- as.Date(date,format = "%y/%m/%d")
df1$ws <- as.numeric(as.character(df$ws))
df1$wd <- as.numeric(as.character(df$wd))

#plot da rosa
windRose(mydata, ws = "ws", wd = "wd",
         #type= "season",          # habilita a função por estaçao
         breaks=c(0,2,5,8,11,17),
         auto.text = T,
         paddle = F,
         anottate = T,
         grid.line = 5,
         key = list(labels = c(">0 -2",
                               ">2 - 5",
                               ">5 - 8",
                               ">11 - 17")),
         key.footer = "WSP (m/s)",
         key.position = "right",
         main = "titulo aqui (2002)",
         par.settings= list(axis.line=list(col="lightgray")),
         col = c("#4f4f4f","#0a7cb9","#f9be00","#ff7f2f","#d7153a"))

