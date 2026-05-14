--Function 
function vMaior(v) 
    --Varaiveis passadas como rarâmetros são LOCAL
    local maior = v[1]
    for  i=1, #v do
        if v[i] > maior then
            maior= v[i]
        end
    end
    return maior
    --RETURN serve para que a gente possa retorna para o global valores locais de funções
end



v = {2,234,6578,41,567,3431,76}
v2 = {2,76,1234,21451245,6789,55}
print(vMaior(v))
print(vMaior({2,76,1234,214245,6789,55}))
-- você pode usar o conteudo da tabela em vez da propria tabela tbm, ou so valores puros

--Chunk
v = {1,2,3}
-- variavel sem nada antes é GLOBAL, pode teoricamente ser chamada de qualquer lugar do arquivo do código
do
    local v = {2,234,6578,41,567,3431,76}
    local    maior = v[1]
    -- LOCAL so funciona dentro do bloco de comando e inferiores(como FOR)que foi criada, se tentar puxar umvalor com mesmo nome, vc vai estar puxando um valor GLOBAL, logo, outra variavel, logo, valor diferente ou nulo
    for  i=1, #v do
        local a = i
        -- Local a, so existe dentro do FOR, sempre dentro de uma estruturação, o local fica preso dentro
        if v[i] > maior then
            maior= v[i]
        end
    end
    print(a)
    
end

for i, v in pairs(v) do
    -- Pairs ajuda a ver todo o conteudo da table
print(i, v)
end

--[[Escopo da variaveis

LOCAL so funciona dentro do Escopo que foi criado, se uma variavel LOCAL for criada dentro de um FOR/DO, DO/END ou IF/ELSE/THEN ou semelhantes, ela so irá funcionar dentro deles
GLOCAL funciona em qualquer luga e em qualquer escopo dentro do arquivo

]]

Soma = function (a,b)
    return a + b
end

function Produto(a,b)
    return a * b
end

function Divi(a,b)
    return a/b
end

function Exec(f, x, y)
    return f(x, y)
end
a = 3
b = 2
Res = Exec(Soma,a,b)

function ExecX(f,x,y,u)
    return f(x, y , u)
end



print(Soma(2,3))
print(Res)

Funcs = {Soma, Produto, Divi, math.pow, 
function (a, b) return a - b end}

Res = {}
for i = 1, #Funcs do
    Res[i] = Exec(Funcs[i], a, b)
   
end

for i, v in pairs(Res) do
    print(i, v)
end

--[[Multiplos valores de Retorno]]

function basc (a, b, c)
    local delta = b^2 - 4 * a * c
    local x1 = (-b - math.sqrt(delta)) / (2 * a)
    local x2 = (-b + math.sqrt(delta)) / (2 * a)
    return x1, x2
end

print("1",basc(2,-10, 12))

Funker = {function (a,b,c) return a + b + c end, basc}

a = 2
b = -10
c = 12

Resx = {}
for i = 1, #Funker do 
    Resx[i]  = ExecX(Funker[i], a, b, c)
end

for i, v in pairs(Resx) do
    print("2",i, v)
end

--x^2 - 5x + 6 = 0
x, j = basc(1, -5, 6)
x, j = basc(2, -10, 12)
print(x , j)
print(basc(1, -5, 6))

--[[Varargs
Concatenação de string sem precisar colocar elas dentro de uma tabela
]]

function concatenar(...)-- ilimtada quantidade de variaveis
    local args = {...} -- ta me retornando uma tupla(dupla, trio ou mais de valores)
    local ret = ""
    for i, arg in ipairs(args) do
        ret = ret .. arg
    end
    return ret
end

x = 1
y = 2

params = {"(", tostring(x), ", ", tostring(y), ")"}

print(concatenar(unpack(params))) --unpack pega uma table e retorna todos os valores

--[[ Closures
São funções com variaveis locais externas á mesma(upvalues)

]]

x1, x2 = basc(1, -5, 6) -- valores das variaveis retornadas da função foram trasnferidos para variaveis globais
params = {"(",tostring(x1),", ",tostring(x2),")"}
print(concatenar(unpack(params)))

--Definir uma variavel Local, mas que não está no escopo da função
function genSoma(parcela) -- função que retorna uma função
    local s = function (b)
        return parcela + b
    end
    return s -- função retornada
end
-- funções podem ser recebidas e retornadas, pois são tipagem de primeira classe, podem ser usadas como parametros

soma2 = genSoma(2) -- quando genSoma é chamado aqui, a função primaria é chamada
print(soma2(10)) -- quandoa variavel com genSoma2 é chamada com um parametro, ele ta chamando a função dentro da função, logo, vai somar 2 do primeiro parametro 
                --anterior + o parametro de agora, que está usando a função dentro da função, logo, dará 12
                --porque o valor 2 não foi apagado pelo garbage collector do LUA? Porque LUA sabia que tinha uma referencia ao valor parcela dentro da função
                --Ai el não foi apagado, e sim utilizado pela função local, fazendo a soma e retornando 12
-- isso pode servir para proteção, privação e encapsulamento do código, organizando o código.


function genD(papa)
    local k = function (j)
        return papa / j
    end
    return k
end

divi2 = genD(10)
print(divi2(10))