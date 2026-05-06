-- -- comando de comentário
-- 3 -- number
-- "água" -- string
-- true -- boolean
a = 3 -- number
a = "água" -- string
b = "água" -- string
b1 = "água é salgada" -- string
x = true -- boolean
print(2 .. tostring(a))
print(2 .. " " .. a)

-- dinamicamente tipada, variaveis trocam de valor dinamicamente sem grandes problemas
    a = 3
    a = "água"
    a = 3
    print(2+a)
    print(2+a^2)

-- tipos especificos exclusivos da lua de valor
    -- nil -- Not in list = Valor Nulo
        a = nil
        print(a)
    --number : tipo numérico
        x = 9
        y = 2.5
        r = 3.14
        -- Podemos colocar numericos com sintaxe Hexadecimal
        address = 0x0000aaf8
    --string : tipo texto
        endereco = "Bairro Montese, Rua Alberto Magno, 707"
        telefone = "+55 (85) 996535253"
        print("Meu Endereço é " .. endereco .. ", e telefone é " .. telefone)
    --table : tabelas -> tipo de dados estruturados, vamos valores correlatos na mesma estrutura
        pessoa = {}
        pessoa.nome = "Eric"
        pessoa.idade = 36

        pessoa = 
        {
            nome = "Raul",
            idade = "26",
            endereco = "Rua Alberto Magno, 707",
        }
        print(pessoa)
        print(pessoa.nome)

        pares = {0, 2, 4, 6, 8 , 10 }

        print(pares)
        print(pares[1])

    -- function : funções
    function soma(a,b)
        return a+b
    end

    s = soma

    print(s(1,2))

    -- thread : designa uma corrotina, lua é single thread, nunca se divide, não existe paralelismo real, é uma ordem de corrotinas

    -- userdata : tipos customizados definidos pelo usuário (em C )