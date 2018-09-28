#Baixa dados de servidores do Ceará
#Truco - Agência Pública - setembro 2018
baseano <- 2015:2018
meses <- c("08","09","10","11","12")
#Loop para baixar os arquivos do TSE - trocar por lapply ou simliar
for(ano in baseano){
  for(mes in meses) {
    arquivo <- paste0(ano,"_",mes,".csv")
    tryCatch(download.file(paste0("https://cearatransparente.ce.gov.br/files/downloads/integration/servers/server_salaries/",ano,mes,"/","servidores_",ano,mes,".csv"),
                           arquivo, mode = "wb"))}}



