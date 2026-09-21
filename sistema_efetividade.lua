local magia = {
    nome = "HydroPump",
    tipo = "Agua",
    poder = 50
}

local pokemon_alvo = {
    nome = "Charizard",
    tipo = "Fogo",
    vida = 200
}

local function calculador_dano_elemental(ataque, defesa)
    local multiplicador = 1
    if ataque.tipo == "Agua" and defesa.tipo == "Fogo" then
        multiplicador = 2
    elseif ataque.tipo == "Agua" and (defesa.tipo == "Agua" or defesa.tipo == "Planta") then
        multiplicador = 0.5
    end

    local dano_final = ataque.poder * multiplicador
    defesa.vida = defesa.vida - dano_final

    local mensagem_batalha = string.format("O %s recebeu %d de dano! Vida restante: %d", defesa.nome, dano_final, defesa.vida)
    print(mensagem_batalha)
end

calculador_dano_elemental(magia, pokemon_alvo)