math.randomseed(os.time()) 

local monstro = {
    nome = "Shiny Pidgeot",
    tabela_loot = {
        {nome = "straw", chance = 80},
        {nome = "bird beak", chance = 50},
        {nome = "feather stone", chance = 10},
        {nome = "zephyr stone", chance = 1}
    }
}

local loot_chao = {

}

local function sorte(pokemon)

    for indice, loot in ipairs(pokemon.tabela_loot) do
        local dado_sorte = (math.random(1, 100))
            if dado_sorte <= loot.chance then
                print(dado_sorte)
                table.insert(loot_chao, loot.nome )
            end   
    end


    if #loot_chao > 0 then 
        print("Voce derrotou um " .. pokemon.nome .. " e ele dropou os seguintes itens:\n " .. table.concat(loot_chao, ","))
    else
        print("Voce derrotou um: " .. pokemon.nome .. " mas ele nao dropou nada!")
    end



end

sorte(monstro)