local sala = {
    {nome = "Zubat", vida = 30},
    {nome = "Pikachu", vida = 0},
    {nome = "Dugtrio", vida = 50}
}

local function magia_terremoto(alvos, dano)
    for indice, pokemon in ipairs(alvos) do
        if pokemon.vida > 0 then
            pokemon.vida = pokemon.vida - dano
            local vida_pokemon = string.format("A vida do %s eh: %d", pokemon.nome, pokemon.vida)
            print(vida_pokemon)
        else
            local mensagem_derrotado = string.format("O %s ja foi derrotado!", pokemon.nome)
            print(mensagem_derrotado)
        end
    end
end

magia_terremoto(sala, 15)

