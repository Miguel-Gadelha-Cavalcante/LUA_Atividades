--[[Modificação e visualização de .CSVs
Customer Id,First Name,Last Name]]

NomeFileInfoPessoal = "code//customers-100.csv" -- pegando o arquivo e botando como valor de uma variavel
ArgInfos = io.open(NomeFileInfoPessoal)-- pegando as informações do valor da variavel e abrindo elas, e exportando parar outra variavel

Conteudo = ArgInfos:read("*a")-- pegando e lendo todo o conteudo do ArgInfos usando a sintaxe *a(TUDO) e colocando como valor no conteudo
--Linha de Cabeçalho
posQuebra, fimQuebra= string.find(Conteudo, "\n") --Está procurando uma quebra de linha no arquivo conteudo e colocado como valor da variavel posQUebra
cabecalho = string.sub(Conteudo, 1, posQuebra -1)   -- Está procurando no Arquivo Conteudo todo o conteudo da primeira linha antes da primeira Quebra de linha
                                                    --Usando a  variavel posQUebra e colocando como valor do cabecalho, mostrando os titulos das colunas do csv
--print(cabecalho)

--Primeira Linha


--[[atualizando o valor de posQuebra e criando o fimQuebra com o mesmo valor do posQuebra, vamos agora procurar após a primeira quebra de linha e usar 
fimQUebra como valor para ir além da qubera de linha, adicionaod +1
Quero ter a posição da proxima quebra de liha, atualizando o valor da variavel antiga posQuebra e fimQuebra com o mesmo conteudo, procurar uma quebra de linha 
usando o \n como parametro, mas so apartir da primeira quebra de linha, por isso o fimQUebra + 1
]]

--[[Capturas
em vez de ter todo o trabalho de achar e fazer a limpeza da informação, você pode fazer uma captura, onde além dos colchetes, você usa as chaves e adiciona uma
variavel extra quando for usar o string.find. O valor vai direto pra variavel e vc ja pode printar pra ver o resultado
]]
while posQuebra ~= nil do --Pegar todas as informações do csv
    local iniLinha = fimQuebra + 1 -- começo da linha
    posQuebra, fimQuebra = string.find(Conteudo, "\n", iniLinha)
    local fimLinha = posQuebra - 1 -- final da linha
    linha = string.sub(Conteudo, iniLinha, fimLinha)
    ini, fim, DEDE,ID, nome, sobrenome, Cidade = string.find(linha, "(%d-),([%w ]+),(.-) *,(.-) *,((%a).-) *,") -- . = qualquer caracter / - = menor range possivel /" " e * são qualquer espaço e qualquer coisa
                                                                                    -- As virgulas, lembrando, são as divisorias de cada uma das informações, que são identificadas e 
                                                                                    -- ignoradas
                                                                                    --
                                                                                    --,([%w ]+), = lendo a informação
    --%d = todos os digitos
    --p ara virguals e espaços no meio do nome, use (%a.-) *
    print("Index: "..DEDE)
    print("ID: ".. ID)
    print("NOME: "..nome)
    print("SOBRENOME: "..sobrenome)
    print("Cidade: "..Cidade)
    print("")
end




