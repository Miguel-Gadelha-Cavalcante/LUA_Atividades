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



