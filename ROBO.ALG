Algoritmo "Robo"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
   opcao, escolh, parcelas, i, meses, escolhTransferencia: inteiro
   invest, escolhInvest, escolhTesouroSelic, escolhInvestAcoes: inteiro
   valorEmprestimo, juros, valorPercent, parcelaMensal, jurosMensais, valorAoMes: real
   resultado, totalFinalFinanciamento, valorInvestimento, taxaInvest: real
   ganhoMensal, retornoTaxa, totalRetorno, taxaInvestSelic, taxaAcoes, dolar: real
   realValue, conversao, valorAnual: real
Inicio
      opcao <- 1

      enquanto verdadeiro faca
           escreval("      MENU DE OPÇÕES")
           escreval("-------------------------------------")
           escreval("[1] - PARA EMPRÉSTIMOS")
           escreval("[2] - PARA INVESTIR")
           escreval("[3] - PARA CÂMBIO DO DÓLAR")
           escreval("[4] - PARA HORÁRIO DE ATENDIMENTO")
           escreval("[5] - PARA SAIR")
           escreval("-------------------------------------")
           leia(opcao)
           
       se(opcao < 1) ou (opcao > 5) entao
          escreval("OPÇÃO INVALIDA! TENTE NOVAMENTE")
       senao
          limpatela
          
          juros <- 15
          taxaInvest <- 0.5
          taxaInvestSelic <- 12
          taxaAcoes <- 8
          dolar <- 5

          escolha (opcao)
         caso 1
           escreval("-------------------------------------")
           escreval("[1] - PARA SIMULAR EMPRÉSTIMO")
           escreval("[2] - VALOR DA TAXA DE EMPRÉSTIMO")
           escreval("[9] - PARA VOLTAR AO MENU INICIAL")
           escreval("-------------------------------------")
           leia(escolh)
           
           se escolh = 1 entao
              escreval("INFORME O VALOR DO EMPRÉSTIMO:")
              leia(valorEmprestimo)
              escreval("VALOR A SER EMPRÉSTADO:", valorEmprestimo)
              parcelas <- 12
              i <- 0
              enquanto verdadeiro faca
                  se i >= parcelas entao
                    interrompa
                  fimse
                  valorPercent <- (valorEmprestimo * juros) / 100
                  parcelaMensal <- valorEmprestimo / parcelas
                  jurosMensais <- valorPercent / parcelas
                  valorAoMes <- parcelaMensal + jurosMensais
                  totalFinalFinanciamento <- totalFinalFinanciamento + valorAoMes
                  meses <- meses + 1
                  se meses = 12 entao
                    juros <- juros + 15
                    meses <- 0
                    escreval("VALOR A SER PAGO NO FINAL DO ANO É:", valorAoMes * 12)
                    escreval()
                  fimse
                  i <- i + 1
               fimenquanto
              totalFinalFinanciamento <- totalFinalFinanciamento
              escreval("VALOR A PAGAR AO FINAL DO EMPRÉSTIMO:", totalFinalFinanciamento)
              escreval()
           fimse
           
           se escolh = 2 entao
             escreval("TAXA DE EMPRÉSTIMO É",juros,"%")
             escreval()
           fimse
           
           se escolh = 3 entao
           fimse
           
         caso 2
           escreval("       INVESTIR")
           escreval("-------------------------------------")
           escreval("[1] - PARA INVESTIR EM POUPONÇA")
           escreval("[2] - PARA INVESTIR EM TESOURO SELEC")
           escreval("[3] - PARA INVESTIR EM AÇÕES")
           escreval("[4] - PARA INVESTIR EM MIM")
           escreval("[5] - PARA VOLTAR AO MENU INICIAL")
           escreval("-------------------------------------")
           leia(invest)
           limpatela
           
           se invest = 1 entao
             escreval("-------------------------------------")
             escreval("[1] - PARA SIMULAR INVESTIMENTO")
             escreval("[2] - PARA SABER VALOR DA TAXA")
             escreval("[8] - PARA VOLTAR AO MENU ANTERIOR")
             escreval("[9] - PARA VOLTAR AO MENU INICIAL")
             escreval("-------------------------------------")
             leia(escolhInvest)
             
               se escolhInvest = 1 entao
                  escreval("INFORME O VALOR:")
                  leia(valorInvestimento)
                  ganhoMensal <- (valorInvestimento * taxaInvest) / 100
                  retornoTaxa <- ganhoMensal * 12
                  totalRetorno <- valorInvestimento + retornoTaxa
                  escreval("IRÁ RECEBER NO FINAL DO ANO R$", totalRetorno)
                  escreval()
               fimse

               se escolhInvest = 2 entao
                  escreval("VALOR DA TAXA É", taxaInvest,"%")
                  escreval()
               fimse
               
               se escolhInvest = 8 entao
               fimse
               
               se escolhInvest = 9 entao
               fimse
           fimse
           
          se invest = 2 entao
            escreval("-------------------------------------")
            escreval("[1] - PARA SIMULAR INVESTIMENTO")
            escreval("[2] - PARA SABER VALOR DA TAXA")
            escreval("[8] - PARA VOLTAR AO MENU ANTERIOR")
            escreval("[9] - PARA VOLTAR AO MENU INICIAL")
            escreval("-------------------------------------")
            leia(escolhTesouroSelic)
            
            se escolhTesouroSelic = 1 entao
               escreval("INFORME O VALOR:")
               leia(valorInvestimento)
               ganhoMensal <- (valorInvestimento * taxaInvestSelic) / 100
               retornoTaxa <- ganhoMensal
               totalRetorno <- valorInvestimento + retornoTaxa
               escreval("IRÁ RECEBER NO FINAL DO ANO R$", totalRetorno)
               escreval()
            fimse
            
            se escolhTesouroSelic = 2 entao
              escreval("VALOR DA TAXA É", taxaInvestSelic,"%")
              escreval()
            fimse
            
            se escolhTesouroSelic = 8 entao
            fimse

               se escolhTesouroSelic = 9 entao
               fimse
          fimse
          
          se invest = 3 entao
            escreval("-------------------------------------")
            escreval("[1] - PARA SIMULAR INVESTIMENTO")
            escreval("[2] - PARA SABER VALOR DA TAXA")
            escreval("[8] - PARA VOLTAR AO MENU ANTERIOR")
            escreval("[9] - PARA VOLTAR AO MENU INICIAL")
            escreval("-------------------------------------")
            leia(escolhInvestAcoes)
            
            limpatela
            se escolhInvestAcoes = 1 entao
               escreval("INFORME O VALOR:")
               leia(valorInvestimento)
               ganhoMensal <- (valorInvestimento * taxaAcoes) / 100
               retornoTaxa <- ganhoMensal
               totalRetorno <- valorInvestimento + retornoTaxa
               valorAnual <- (totalRetorno / 100) * 12
               totalRetorno <- valorInvestimento + valorAnual
               escreval("IRÁ RECEBER NO FINAL DO ANO R$", totalRetorno)
               escreval()
            fimse
            
            se escolhTesouroSelic = 2 entao
              escreval("VALOR DA TAXA É", taxaAcoes,"%")
              escreval()
            fimse

            se escolhTesouroSelic = 8 entao
            fimse

            se escolhTesouroSelic = 9 entao
            fimse
          fimse

         caso 3
            escreval("-------------------------------------")
            escreval("[1] - PARA CALCULAR VALOR A SER TRANSFERIDO")
            escreval("[2] - PARA CÂMBIO DO DOLAR")
            escreval("[9] - PARA VOLTAR AO MENU INICIAL")
            escreval("-------------------------------------")
            leia(escolhTransferencia)
           
           limpatela
           se escolhTransferencia = 1 entao
              escreval("INFORME O VALOR QUE DESEJA EM DÓLAR U$:")
              leia(valorInvestimento)
              conversao <- dolar * valorInvestimento
              escreval("PRECISA TRANSFERIR EM R$",conversao, " REAIS")
              escreval()
           fimse
           
           se escolhTransferencia = 2 entao
             escreval("VALOR DO CÂMBIO É", dolar,"%")
           fimse
           
           se escolhTransferencia = 9 entao
           fimse
           
        caso 4
           escreval("O FUNCIONAMENTO DO BANCO É DA 08 AS 18 HORAS, EM DIAS ÚTEIS")
           escreval()
           
        caso 5
            se opcao = 5 entao
            escreval("AGRADECEMOS O CONTADO")
            interrompa
            fimse
            
        fimescolha
       fimse


      fimenquanto
Fimalgoritmo