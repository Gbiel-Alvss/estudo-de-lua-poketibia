local pokemon = {
    nome = "Charmander",
    nivel = 14
}

local function evolucao(alvo, evolution, evoluir)
    
    if alvo.nivel >= evoluir then
        print("O " .. alvo.nome .. " evouluiu para " .. evolution)
    else 
        local dif_nivel = evoluir - alvo.nivel
        print("Ainda faltam " .. dif_nivel .. " niveis para poder evoluir")
    end
end

evolucao(pokemon, "Charmeleon", 16)

pokemon.nivel = 16

evolucao(pokemon, "Charmeleon", 16)

