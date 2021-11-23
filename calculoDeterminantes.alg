//----------------------------------------------------------------------------//
//Início das Funções//

funcao doisPorDois(m11, m12, m21, m22: real)  : real
var
   deter: real
inicio
   deter <- (m11 * m22) - (m12 * m21)
   retorne deter
fimfuncao

funcao tresPorTres(m11, m12, m13, m21, m22, m23, m31, m32, m33: real)  : real
var
   deter: real
   dir: real
   esq: real
inicio
   dir <- (m11 * m22 * m33) + (m12 * m23 * m31) + (m13 * m21 * m32)
   esq <- (m12 * m21 * m33) + (m11 * m23 * m32) + (m13 * m22 * m31)
   deter <- dir - esq
   retorne deter
fimfuncao

//Fim das Funções//
//----------------------------------------------------------------------------//



algoritmo "Determinante"
// Autor : Guilherme Iago dos Reis

// Seção de Declarações 
var
op: inteiro
a11, a12, a21, a22: real
b11, b12, b13, b21, b22, b23, b31, b32, b33: real
dt: real
inicio
// Seção de Comandos 
Escreval("******** Bem vindo(a) ao calculador de determinantes das matrizes")
Escreval("******** Para matrizes 2x2 digite 1")
Escreval("******** Para matrizes 3x3 digite 2")
Leia(op)

Escreval("")

Se (op = 1) entao
   Escreval("Digite o valor da primeira linha da matriz 2x2: ")
   Leia(a11, a12)
   Escreval("")
   Escreval("Digite o valor da segunda linha da matriz 2x2: ")
   Leia(a21, a22)
   Dt <- doisPorDois(a11, a12, a21, a22)
   Escreval("")
   Escreval("A determinante é: ", dt)
FimSe

Se (op = 2) entao
   Escreval("Digite o valor da primeira linha da matriz 3x3: ")
   Leia(b11, b12, b13)
   Escreval("")
   Escreval("Digite o valor da segunda linha da matriz 3x3: ")
   Leia(b21, b22, b23)
   Escreval("")
   Escreval("Digite o valor da terceira linha da matriz 3x3: ")
   Leia(b31, b32, b33)
   Dt <- tresPorTres(b11, b12, b13, b21, b22, b23, b31, b32, b33)
   Escreval("")
   Escreval("A determinante é: ", dt)
FimSe

fimalgoritmo
