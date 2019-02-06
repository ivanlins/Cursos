algoritmo "Triangulos"
var

   L1, L2, L3, c1, c2, h: real
       EQ, ES, T, IS, TR: Logico

inicio
      Escreval("Digite o os valores do seu Triangulo: ")
      escreval ("Base / Cateto 1")
      Leia(L1)
      escreval ("Lado 1 / Cateto 2")
      Leia(L2)
      escreval ("Lado 2 / Hipotenusa")
      Leia(L3)
      c1 <- L1
      c2 <- L2
      h <- L3
      
      T <- (L1 < L2 + L3) e (L2 < L1+L3) e (L3 < L2+L1)
      EQ <- (L1 = L2) e (L2 = L3)
      ES <- (L1 <> L2) e (L2 <> L3) e (L1 <> L3)
      IS <- (L1<>L2) e (L1<>L3) e (L2=L3)
      TR <- ((L1^2)+(L2^2)) = (h^2)
      
         escreval("Pode formar um triangulo? ", T)
         escreval("O triangulo é Equilatero? ", EQ)
         escreval("O triangulo é Escaleno? ", ES)
         escreval("O triangulo é isosceles? ", IS)
         escreval("O triangulo é um triangulo retangulo? ", TR)
         

fimalgoritmo
