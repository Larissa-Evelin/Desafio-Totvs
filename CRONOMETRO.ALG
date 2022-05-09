Algoritmo "Cronômetro"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
   voltas, i, end, soma, total, media: inteiro
   crono: vetor [0..20] de inteiro
   
Inicio
      escreva("INFORME QUANTAS VOLTAS:")
      leia(voltas)

      para i de 0 ate voltas-1 faca
          escreval("INICIANDO VOLTA", i+1)
          end <- randi(50) + 1
          escreval("ENCERRADO")
          crono[i] <- end
          total <- total + 1
      fimpara
      
      soma <- 0
      para i de 0 ate voltas-1 faca
          escreval("VOLTA", i+1, " - TEMPO GASTO DE ", crono[i], " MINUTOS")
          soma <- soma + crono[i]
      fimpara
      
      media <- int(soma / total)
      
      escreval("TOTAL VOLTAS",voltas)
      escreval("TOTAL MINUTOS", soma)
      escreval("MEDIA MINUTOS", media)
      
      
      
      

      
      


Fimalgoritmo
