--[[ programação estruturada
    OBS: A progrramação estrutura é a programação que evita o uso da instrução GO TO
        Sequencia           : um comando atrás do outro
        O->O->O
        Seleção(if/else)    : dependendo de um valor especifico, é rodado uma parte diferente do código para uma resultado final
        O<=>O
        Repetição(while)    : repete o mesmo comando até que um valor em especifico seja mudado ouchegeu a um resultado em especifico
        O<o°-O

]]
--[[Resolução de uma Equação do segundo grau

ax^2 +bx + x = 0
x1 = (-b -sqrt(delta)) /(2*a)
x2 = (-b +sqrt(delta)) /(2*a)
delta = b^2 - 4 * a * c

--x^2 - 5x + 6 = 0

]]

-- Exeplo de eEstrutura de Sequência
a = 2
b = -10
c = 12

delta = b^2 - 4 * a * c
x1 = (-b - math.sqrt(delta)) / (2*a)
x2 = (-b + math.sqrt(delta)) / (2*a)
print(x1, x2)

--Exemplo de Estrutura de Seleção

a = 100
b = 20
c = 10
maior = a

if  b > maior then
    maior = b
end

if c > maior then
    maior = c
end

print(maior)

-- exemplo de Estrutura de repetição
--[[
for
repeat
while

valores = {2,10,5,12,768,98,34}

maior = valores[1]
v = 1
--while v <= #valores then
if valores[1] < valores[v] then
   maior =  valores[v]
else
    maior = valores[v]
end
print(maior)
v = v+1
--end
]]

valores = {2,10,5,12,768,98,341}
maior = valores[1]
print(valores)
for i = 1,  #valores do 
    if  maior < valores[i] then
        maior =  valores[i]
    end
        print(maior)
end

--[[Programação não estruturada
        Você poderia apontar o comando de executação de código para qualquer área do código, sem precisar de muita estrutura ou nenhuma para isso, usando GO TO
        OBS: usar muito GO TO deixa o código ao longo do tempo muito macarronado, dificil de ler e menos organizado, tem que ser usado de forma sadia.
        

]]
