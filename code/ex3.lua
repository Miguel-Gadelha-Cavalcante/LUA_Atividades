--[[ expressões
-- constantes numericas e strings   : 1, 3,14, -10, "abacate"
-- operações unárias e binárias     : unarias são de valor unica, binarias de dois valores : a+b, -x, z^2, " - ", ..
-- chamada de função                : soma(a,b), math.sqrt(2)
-- definição dde função             : function(a, b) return a+b end
    --funções são objetos de primeira classe, logo podem seru sadas de varias formas em vários lugares de uma programação
    --passadas, atribuidas, passadas por outras funções e retornadas por funções
-- Constutores de tabela {}, {nome="Ana", idade=25}
]]

--[[ OPERADORES ARITMETICOS
-- + aDIÇÃO         : a+b, 1+2
-- - SUBTRAÇÃO      : x-y, 5-r
-- * MULTIPLICAÇÃO  : 4*a
-- / DIVISÃO        : y / x
-- - negação        : -b, -7
-- exponenciação    : x^2, 3^0.5
]]

--[[Operadores RELACIONAIS    
-- < menor que
-- > maior que
-- <= menor ou igual a 
-- >= maior ou igual a 
-- == igual
--OBS : apenas um = é apenas atribuição de igualdade
-- ~= diferente
-- OBS: podem ser usados com núemros, strings e tabelas
-- 1 < 2  true
-- "a" > "b" false
-- "abacate" < "abacaxi" -- true
-- OBS: é possivel comprar as strings baseado na ordenação do alfabeto, por isso é possivel comparar palavras e por isso é possivel 
-- criar valor a elas, logo, há comparação
-- {} == {} --false
]]

--[[ OPERADORES LÒGICOS
-- not, and, or 
--not true == false
-- a and b == true <=>(apenas se) a == b == true
-- a or b == false <=> a == b == false
--OBS: observação de curto percurso, para falso é sempre falso ou nill(null ou nulo) e qualque outra coisa é verdadeira, lua não executa
-- toda a expressão emvolvida se ele ja sabe a respsota ANTES. EX: em uma expressão que a e b são verdadeiros e so é verdadeiro se os dois forem verdadeiros, se por acaso o
-- a for falso, toda a expresão é falsa, pois apenas quando as duas são verdadeiras que é realmetne verdadeiro, isso na mecanica de AND, mas o OR
-- so é falso se os DOIS forem falsos
]]

--[[ Concatenação
-- .. junta dois valores, ou melhor "concatena"
--Comprimento
-- # usado em strings e tabelas para ver o número de elementos dentro
-- # "a b" == 3 
-- #{5, 4, 3, 2} ==4
]]
a = 10
b = 22
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a^b)
print(a^0.5)
c = b^0.5
print(c)
print(c*c)
print(c*2)
print(a>b)
print(a<b)
print(a <= 10)
print(a < 10)
print(a == a)
print("a" == "a")
print("b" == "a")
print("abacate" < "abacaxi")
print("abacate" < "abacate")
print("abacate"<="abacate")
print({} == {})
tab1 = {}
tab2 = tab1
print (tab1 == tab2)
a = true
b = false
print(a and b)
print(a or b)
print(a , b)
s1 = "hoje"
s2 = "é dia de festa"
print(s1.." "..s2)
s3 = s1 .. " " ..  s2
print(s3)
print(#s3)
print(#"água")
print(#"")