-- local lista = {"A", "B"}
-- table.insert(lista, "C")

-- table.insert(lista, 1, "X")

-- table.remove(lista, 2)

-- table.remove(lista) --apaga o ultimo array

-- local mochila = {"Pocao", "Corda"}

-- table.insert(mochila, "Mapa")

-- table.insert(mochila, 1, "Tocha")

-- print(mochila[1], mochila[3])

-- local fila_ataques = {"Investida", "Arranhao", "Mordida"}

-- table.remove(fila_ataques, 2)

-- print(#fila_ataques)

-- print(fila_ataques[2])

local mochila_jogador = {

}

local loot_derrotado = {
    "Moeda de Ouro",
    "Pe de Morcego",
    "Pocao pequena"
}

for indice, item in ipairs(loot_derrotado) do
    table.insert(mochila_jogador, item)
    print("Coletado: " .. item)
end

table.remove(mochila_jogador, 1)

print(#mochila_jogador)
print(mochila_jogador[1])
