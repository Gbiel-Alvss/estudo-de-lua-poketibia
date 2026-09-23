local pokebola = { 
    nome = "UltraBall", 
    multiplicador = 6
}

local pokemon_selvagem = {
    nome = "Pidgeot", 
    chance_base = 10
}

local function tentar_capturar(bola, alvo)
    local chance_final = alvo.chance_base * bola.multiplicador
    local sorte = math.random(1, 100)
    local infos = string.format("Voce jogou a %s! Sorte: %d | Chance Necessaria: %d", bola.nome, sorte, chance_final)
    print(infos)
    if sorte <= chance_final then
        local sucesso = string.format("Voce capturou o %s!", alvo.nome)
        print(sucesso)
    else
       local falha = string.format("O %s fugiu!", alvo.nome)
       print(falha)
        end
end

tentar_capturar(pokebola, pokemon_selvagem)