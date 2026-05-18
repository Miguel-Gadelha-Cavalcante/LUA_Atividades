--[[Strings
Valores de Texto
"agua"
"abacate"
"i'm okay"
]]
--Strings LITERAIS
s1 = 'água'
s2 = "abacate"
s3 = "i'm okay with"-- se usar duas setas na string, você pode usar uma seta dentro da string normalmente
s4 = 'i\'m a demon'--Se quiser usar uma seta pra fazer a string eusar uma seta no texto, terá que usar uma contra barra para que a string funcione
--[[contra barras são redundantes
String normalmente não tem quebra de linha, mas se pode adicionar um comande de quebra de linha dentro da String NORMALMENTE, mas usando Barras Duplas
como nos comentarios de linhas extras,, você podera quebrar linhas
]]
s5 = [[Essa é uma string 
quebrada]]
--Contra barra + n tambpem funcionam se quiser usar as setas duplas
s6 = "Esse é um, 'texto' \n Quebrado"
s7 = "Esse é um texto \n\"quebrado\""
print(s7)

--Comprimento e Concatenação

s5 = s5 .. s6 -- .. é o comando de concatenação
--Apagao valor original, copia e concatena com o segundo valor novo, criando um valor novo para a váriavel s5, o valor antigo do s5 não existe mais
print("O comprimento e: " .. tostring(#s5))--tostring transforma informção ou melhor, valor em String
--table.concat({}) pega uma tabela com várias strings separadas e unifica todas elas em um valor só,. concatenandos elas. Também serve para valores separados
print(table.concat({"Agua", "do", "mar"}, " "))
--Também é possivel modificar um separador para cada valor
print(table.concat({"Zagua", "Du","MARR"},"/"))
-- è muito bom para fazer uma mexida com varios valores strings

function join (...)
    return table.concat({...}, " ")
end
cabaco = {"Eu", "Sou", "O", "Odio"}

print(join("ca", "ra", "lho"))

function joinar(sep, words)
    return table.concat(words, sep)
end
print("Cara","Cara")
print("Cachorro ".."Quente")

--[[patern Matching
permite fazer buscas e substituir padrões
string.find
string.match
string.sub
e dentre outras
]]

print("!"..string.sub(s3, 5, 7).."!")
print(string.upper(s5))
print(string.lower(s3))

--Vai mostrar de forma crua a posição numerada das palavras que você esta procurando, ou melhor,a  posição das letras em especifico, e se difere se vc colocar
--palavras em maiusculo ou minuscuolo, podendo retornar nill
print(string.find(s3,string.lower("ok")))
print(string.find(s3,"OK"))
ini, fim = string.find(s3, "ok")
print(string.sub(s3, ini, fim))
--O que foi feito foi o uso de variaveis como coordenadas em uma localização de uma string em outra variavel com valor string 
--NBão precisa de uma string fixca, mas em geral um padrão, que pode, de certa forma, cobrir mais caracteres do que eu proprio estou dizendo aénas usando um 
--valor string
ini, fim = string.find(s5, "%w+")
--% quer dizer que eu estou introduzindo um padrão
--W qualquer caracter alfanumerico(numeros, letras e Undescore[talvez])
--+ Uma ou mais repetições
--Essa configuração de comando pode identificar uma frase inteira, se limitando a espaços vazios e acentos isolados
print(ini, fim)
print(string.sub(s5, ini, fim))

