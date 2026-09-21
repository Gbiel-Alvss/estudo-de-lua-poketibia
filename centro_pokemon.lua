local equipe = {
    {nome = "Pikachu", hp_atual = 50, hp_maximo = 100},
    {nome = "Gyarados", hp_atual = 10, hp_maximo = 100},
    {nome = "Charizard", hp_atual = 0, hp_maximo = 100},
    {nome = "Mewtwo", hp_atual = 1000, hp_maximo = 1000}
}


local function curar_equipe(time)
    for indice, pokemon in ipairs(time) do
        if pokemon.hp_atual == 0 then
            print("Seu " .. pokemon.nome .. " esta morto, voce precisa de um revive")
        elseif pokemon.hp_atual < pokemon.hp_maximo then
            pokemon.hp_atual = pokemon.hp_maximo
            print("O " .. pokemon.nome .. " foi curado com sucesso e esta com: " .. pokemon.hp_atual .. " de hp!") 
        else 
            print("O " .. pokemon.nome .. " nao precisa de cura, ele ja esta totalmente curado")
        end
    end
end

curar_equipe(equipe)
        

