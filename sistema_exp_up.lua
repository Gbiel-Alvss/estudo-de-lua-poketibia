local pokemon = {
    nome = "Pikachu",
    nivel_atual = 9,
    exp_atual = 0,
    exp_limite = 100
}



local function ganho_exp(ganhador, recompensa)

        ganhador.exp_atual = ganhador.exp_atual + recompensa

        if ganhador.exp_atual >= ganhador.exp_limite then

            ganhador.nivel_atual = ganhador.nivel_atual + 1

            ganhador.exp_atual = ganhador.exp_atual - ganhador.exp_limite

            ganhador.exp_limite = ganhador.exp_limite + 20
            print("O pokemon subiu de nivel, agora ele eh nivel: " .. ganhador.nivel_atual .. " A xp necessaria para ele upar agora sera: " .. ganhador.exp_limite)
        else 
            local mensagem_de_up = string.format("O %s ganhou %d de xp e ficou com %d de xp atual no nivel %s", ganhador.nome, recompensa, ganhador.exp_atual, ganhador.nivel_atual)
            print(mensagem_de_up)
        end
        
end

ganho_exp(pokemon, 20)
ganho_exp(pokemon, 20)
ganho_exp(pokemon, 20)
ganho_exp(pokemon, 20)
ganho_exp(pokemon, 20)




      
    



    

    
