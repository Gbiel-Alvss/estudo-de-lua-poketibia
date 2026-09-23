-- local config = {
--     porta = 8000,
--     log = true,
--     auth = 'token'
-- }

-- config.log = false
-- config.auth = ""
-- config.porta = nil

-- for infos, dado in pairs(config) do
--     print(infos, dado)
-- end

local frutas = {
    "laranja",
    "banana",
    "abacaxi",
    "uva"
}

table.remove(frutas, 2)

print(#frutas)
