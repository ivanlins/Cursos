algoritmo "ParImpar"
var
   N: INTEIRO
   R: CARACTERE


   FUNCAO ParOuImpar(V: inteiro): caractere
   inicio
         se (V%2 = 0) entao
            retorne " PAR! "
         senao
            retorne " IMPAR! "
         fimse
   fimfuncao


inicio
      ESCREVA("DIGITE UM NUMERO: ")
      LEIA (N)
      R <- ParOuImpar(N)
      ESCREVA ("O NUMERO ", N, " E UM VALOR", R)
fimalgoritmo
