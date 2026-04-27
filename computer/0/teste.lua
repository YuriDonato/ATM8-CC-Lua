local function printCenter(text, width)
    local pad = math.floor((width - #text) / 2)
    print(string.rep(" ", pad) .. text)
end

local w, h = term.getSize() -- Pega o tamanho da tela do CC
print(string.rep("=", w))
printCenter("SISTEMA OPERACIONAL", w)
print(string.rep("=", w))