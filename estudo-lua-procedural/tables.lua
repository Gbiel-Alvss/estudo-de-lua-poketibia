--[[
local cor = {

    cores = {"vermelho", "verde", "azul"}

    

}
table.insert(cor.cores, "amarelo")

print(cor.cores[4])
]]

-- local perfil = {
--     nome = "Gabriel",
--     idade = 22,
--     ativo = true
-- }

-- perfil.idade = perfil. idade + 1
-- perfil.pontuacao = 100

-- print(perfil.pontuacao)
-- print(perfil.idade)

-- local projeto = {
--     titulo = "Meu Jogo",
--     tarefas = {"pesquisar", "escrever"}
-- }
-- print(projeto.tarefas[1])

        -- local frutas = {
        --     "laranja",
        --     "banana",
        --     "uva"
        -- }

        -- for indice, fruta in ipairs(frutas) do
        --         print(indice, fruta)
        --     end

-- local inimigo = {
--     tipo = "orc",
--     vida = 50,
--     agressivo = true
-- }
-- for caracteristica, dado in pairs(inimigo) do 
--     print(caracteristica, dado)
-- end

-- local senha_digitada = "12345"

-- if senha_digitada == "mudar123" then
--     print("Acesso concedido")
-- else
--     print("Acesso negado")
-- end

-- local function calcular_dano(ataque, defesa) 
--     local dano_causado = ataque - defesa
--     return dano_causado
-- end

-- local dano_final = calcular_dano(50, 20)
-- print(dano_final)

-- local energia = 3

-- while energia > 0 do
--     print("Golpe!")
--     energia = energia - 1
-- end
-- print("Energia esgotada.")

local jogador = {
    pontos = 10
    }
local function dobrar_pontos(alvo)
    alvo.pontos = alvo.pontos * 2
end
dobrar_pontos(jogador)
print(jogador.pontos)



