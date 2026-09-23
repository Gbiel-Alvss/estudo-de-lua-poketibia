local BasePokebola = {

}

BasePokebola.__index = BasePokebola

local pokemon_selvagem = {
    nome = "Pidgeot", 
    chance_base = 10
}


function BasePokebola:jogar(alvo)
    local chance_final = alvo.chance_base * self.multiplicador
    local sorte = math.random(1, 100)
    local infos = string.format("Voce jogou a %s! Sorte: %d | Chance Necessaria: %d", self.nome, sorte, chance_final)
    print(infos)
    if sorte <= chance_final then
        local sucesso = string.format("Voce capturou o %s!", alvo.nome)
        print(sucesso)
    else
       local falha = string.format("O %s fugiu!", alvo.nome)
       print(falha)
    end
end

local function criar_pokebola(nome_recebido, multiplicador_recebido)
    local nova_bola = {
        nome = nome_recebido,
        multiplicador = multiplicador_recebido
    }
    setmetatable(nova_bola, BasePokebola)
    return nova_bola
end



local minha_ultraball = criar_pokebola("UltraBall", 6)

minha_ultraball:jogar(pokemon_selvagem)
