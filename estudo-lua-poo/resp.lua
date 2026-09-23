local relogio_servidor = 100

local BaseMonstro = {

}

BaseMonstro.__index = BaseMonstro

function BaseMonstro:tomar_dano(dano)
    self.hp = self.hp - dano
    print(self.nome .. " tomou " .. dano .. " de dano. HP restante: " .. self.hp)
end

local function criar_monstro(nome_recebido, hp_recebido)
    local criatura = {
        nome = nome_recebido,
        hp = hp_recebido
    }
    setmetatable(criatura, BaseMonstro)
    return criatura
end

local meu_bicho = criar_monstro("Mewtwo", 100)

meu_bicho:tomar_dano(25)

local monstros_area = {
    criar_monstro("Raichu", 100), 
    criar_monstro("Onix", 200)
}
local magia = {
    nome = "earthquake",
    dano = 40, 
    cooldown = 10, 
    ultimo_uso = 80
}

local function aoe(spell, tempo_atual, lista_alvos)
    if tempo_atual - spell.ultimo_uso >= spell.cooldown then
        spell.ultimo_uso = tempo_atual
        for indice, alvos in ipairs(lista_alvos) do
            alvos:tomar_dano(spell.dano)
            local mensagem_turno = string.format("%s atingiu %s! HP restante: %d ",spell.nome, alvos.nome, alvos.hp )
            print(mensagem_turno)
        end
    else
        print("Habilidade em CD")
    end
end

aoe(magia, relogio_servidor, monstros_area)
