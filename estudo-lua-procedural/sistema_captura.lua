local pokebola = {
    nome = "PokeBall", 
    rate = 10
}

local pokemon = {
    nome = "pidgey", 
    fuga = 5
}

local function tentar_capturar(bola, alvo)
    local sorte = (math.random(1, 100))
    local chance_final = (bola.rate - alvo.fuga)
    print( "Sorte tirada: " .. sorte .." | Chance necessaria: " .. chance_final)
    if sorte >= chance_final then
        print("Voce capturou o " .. alvo.nome .. " !")
    else
        print("Que pena o " .. alvo.nome .. " escapou!")
    end
end

tentar_capturar(pokebola, pokemon)
tentar_capturar(pokebola, pokemon)
tentar_capturar(pokebola, pokemon)
tentar_capturar(pokebola, pokemon)
tentar_capturar(pokebola, pokemon)
tentar_capturar(pokebola, pokemon)