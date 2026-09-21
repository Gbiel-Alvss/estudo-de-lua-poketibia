local jogador = {
    dinheiro = 120
}

local loja = {
    {nome = "Pocao", preco = 50},
    {nome = "Corda", preco = 100}
}

local function comprar_itens(comprador, vitrine)
    for indice, item in ipairs(vitrine) do
        if comprador.dinheiro >= item.preco then
            comprador.dinheiro = comprador.dinheiro - item.preco
            print("Comprou " .. item.nome .. "!\nSaldo: " .. comprador.dinheiro)
        else
            print("Sem dinheiro para comprar o item " .. item.nome)
        end
    end
end

comprar_itens(jogador, loja)
