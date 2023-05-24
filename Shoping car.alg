algoritmo "SHOPING CAR"
// Função : DESENVOLVER UM SISTEMA DE LOGIN E SENHA COM VENDA DE VEICULOS
// Autor :DAVID VICENTE DE LIMA
// Data : 09/05/2023
// Seção de Declarações
var

//var do login
login:caractere
senha:real
logininformado:caractere
senhainformada:real
//FIM DA VARIAVEL DE LOGIN



//INICIO DECLARACOES DE VARIAVEIS PARA CADASTRO DE VEICULOS
CARRO1,CARRO2,CARRO3,CARRO4,CARRO5,CARRO6:caractere
// FIM DAS VARIAVEIS UTILIZADAS PARA CADASTRO DE VEICULOS



//INICIO DE VARIAVEIS GLOBAL(PODE SER CHAMADAS A QUALQUER MOMENTO)
ACESSO:INTEIRO
ACESSO2:INTEIRO
//FIM DA VARIAVEL GLOBAL



//CADASTRO DE VEICULO PELO OPERADOR DO SISTEMA
VEICULO,VENDA,CARACTERISTICAS,ANO:INTEIRO
VALOR:REAL
//FIM DE CADASTRO DE VEICULOS


PG:real

TROCO,valorrepassado,valordotroco:real
valorparcela,valorcar,parcelas:REAL



//INICIO VARIAVEIS DO FINANCIAMENTO
quantiparcelas,valorfinal,PARCEFINAL,JUROS:REAL
//FIM VARIAVEIS DO FINANCIAMENTO



inicio

// Seção de Comandos PARA LOGIN E SENHA

Login <- "LCC"
Senha <- 2535

REPITA
   ESCREVAL("SEJA BEM-VINDO A LOJA BOA COMPRA")
   ESCREVAL("---------------------------------")
   ESCREVAL("LOGIN")
   LEIA(logininformado)
   ESCREVAL("SENHA")
   LEIA(senhainformada)


   SE (logininformado = login) E (senhainformada = senha) ENTAO
      ESCREVAL("OLÁ,SEJA BEM-VINDO")
   FIMSE
ATE (logininformado = login) e (senhainformada = senha)

// FIM DE LOGIN E SENHA



//DEI UM VALOR FIXO PARA A VARIAVÉL
CARRO1 <- "HILUX ANO 2022,CABINE DUPLA, COR: PRETA, VALOR R$230.000,00"
CARRO2 <- "HILUX ANO 2023,CABINE ESTENDIDA, COR: PRETA, VALOR R$330.000,00"
CARRO3 <- "HILUX ANO 2023,CABINE DUPLA, COR: PRETA, VALOR R$340.000,00"
CARRO4 <- "HILUX ANO 2022,CABINE DUPLA, COR: VERMELHA, VALOR R$300.000,00"
CARRO5 <- "COROLLA ANO 2022,BLINDADO, COR: VERMELHA, VALOR R$120.000,00"
//FIM DE CADASTRO DE VEICULOS



//INICIO DO SISTEMA DE OPERAÇOES

REPITA

   ESCREVAL("DIGITE 1 PARA CONSULTAR CARROS")
   ESCREVAL("DIGITE 2 PARA CADASTRAR VEICULO ")
   ESCREVAL("DIGITE 3 PARA VENDER VEICULO")
   ESCREVAL("DIGITE 10 PARA SAIR")
   LEIA(ACESSO)

   SE ACESSO = 1 ENTAO
      ESCREVAL("---------------------------------")
      ESCREVA("OLÁ,NOSSAS OPÇOES DE VEICULOS DISPONIVEIS SÃO:")



      ESCREVAL(CARRO1)
      ESCREVAL("---------------------------------")
      ESCREVAL(CARRO2)
      ESCREVAL("---------------------------------")
      ESCREVAL(CARRO3)
      ESCREVAL("---------------------------------")
      ESCREVAL(CARRO4)
      ESCREVAL("---------------------------------")
      ESCREVAL(CARRO5)
      ESCREVAL("---------------------------------")
      ESCREVAL(CARRO6)


   senao

      SE ACESSO = 2 ENTAO

         ESCREVAL("INFORME O NOME DO VEICULO")
         LEIA(VEICULO)
         ESCREVAL("INFORME O ANO DO VEICUL0")
         LEIA(ANO)
         ESCREVAL("INFORME AS CARACTERISTICAS DO VEICULOS")
         LEIA(CARACTERISTICAS)
         ESCREVAL("INFORME O  VALOR DO VEICULOS")
         LEIA(VALOR)
         ESCREVAL("******************")
         ESCREVAL("VEICULO CADASTRADO")
         ESCREVAL("veiculos", VEICULO)
         ESCREVAL("ano", ANO)
         ESCREVAL("caracteristica",CARACTERISTICAS)
         ESCREVAL("valor", VALOR)
         ESCREVAL(" ***********************************")

      SENAO

         se ACESSO = 3 entao

            //Em construção

            ESCREVAL("DIGITE 1 PARA PAGAMENTOS A VISTA")
            ESCREVAL("DIGITE 2 CARTÃO DE CRÉDITO OU DEBITO")
            ESCREVAL("DIGITE 3 FINANCIAMENTO")
            ESCREVAL("DIGITE 10 PARA SAIR")
            LEIA(PG)

            SE PG = 1 ENTAO

               ESCREVAL("INFORME O VALOR DO VEICULO")
               LEIA(valorrepassado)

               ESCREVAL("INFOME VALOR RECEBIDO PELO CLIENTE")
               LEIA(valordotroco)

               TROCO<-(valordotroco-valorrepassado)

               ESCREVAL("VEICULO PAGO")
               ESCREVAL("TROCO",TROCO)

            SENAO

               SE PG = 2 ENTAO

                  ESCREVAL("INFORME O VALOR DO VEICULO")
                  LEIA(valorcar)

                  ESCREVAL("INFORME A QUANTIDADE DE PARCELAS")
                  LEIA(parcelas)

                  valorparcela<-(valorcar/parcelas)

                  ESCREVAL("VALOR DA SUA PARCELA É",valorparcela)

               SENAO

                  SE PG = 3 ENTAO

                     ESCREVAL("INFORME O VALOR DO VEICULO")
                     LEIA(valorfinal)

                     ESCREVAL("ESCOLHA A QUANTIDADE DE PARCELAS PARA O SEU FINANCIAMENTO")
                     ESCREVAL("36X-----DIGITE 36")
                     ESCREVAL("48X-----DIGITE 48")
                     ESCREVAL("60X-----DIGITE 60")
                     LEIA(quantiparcelas)

                     SE quantiparcelas = 36 ENTAO

                        JUROS<-(valorfinal*0.04)
                        PARCEFINAL<-(valorfinal/36) + JUROS
                        ESCREVAL("VOCÊ PARCELOU EM 36X, O VALOR DA SUA PARCELA É",PARCEFINAL)
                        ESCREVAL("PARABENS SEU SONHO VAI FAZER VOCÊ PAGAR DUAS VEZES O VALOR REAL DO BEM ADEQUERIDO")
                        ESCREVAL("OTARIO VAI PAGAR APENAS",PARCEFINAL*36)

                     SENAO

                        SE quantiparcelas = 48 ENTAO

                           JUROS<-(valorfinal*0.04)
                           PARCEFINAL<-(valorfinal/36) + JUROS
                           ESCREVAL("VOCÊ PARCELOU EM 48X, VAL0R DA SUA PARCELE É:",PARCEFINAL)
                           ESCREVAL("PARABENS SEU SONHO VAI FAZER VOCÊ PAGAR DUAS VEZES O VALOR REAL DO BEM ADQUIRIDO")
                           ESCREVAL("OTARIO VAI PAGAR APENAS",PARCEFINAL*36)

                        SENAO

                           SE quantiparcelas = 60 ENTAO

                              JUROS <-  (valorfinal*0.04)
                              PARCEFINAL <- (valorfinal/60)+JUROS
                              ESCREVAL (" VOCE PARCELOU EM 60X, O VALOR DA SUA PARCELE E:",PARCEFINAL)
                              ESCREVAL ("PARABENS SEU SONHO VAI FAZER VOCÊ PAGAR DUAS VEZES O VALOR REAL DO BEM ADQUIRIDO")
                              ESCREVAL ("OTARIO VAI PAGAR APENAS",PARCEFINAL*60)

                           FIMSE
                        FIMSE
                     FIMSE
                  FIMSE
               FIMSE
            FIMSE
         FIMSE
      FIMSE
   FIMSE
ATE ACESSO = 10

//FIM DOS VEICULOS

fimalgoritmo

