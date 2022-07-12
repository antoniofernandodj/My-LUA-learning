--[[
    In this file I will make a study with IO opperations,
    such as printing on screen and opperating with local files.
    Some txt files will be writed and readed.
]]--

io.write('Input some number: ')
local numb = io.stdin:read("*l")

print('The number you inputed was: '..numb)
print(type(numb))

io.write('Input some number: ')
local n = io.stdin:read("*l")

print('The number you inputed was: '..n)
print(type(n)) -- If you put a non number value the lua crashes

io.write('Input some name: ')
local nm = io.stdin:read("*l")

print('The name you inputed was: '..nm)
print(type(nm))

local file = io.open('teste.txt', "r")
local content_of_file = file:read("*all")
file:close()
print(content_of_file)


local file_name = 'teste2.txt'


local text = [[
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus risus nec egestas egestas. Maecenas ultrices quis leo a ultrices. Phasellus venenatis tellus ut lectus maximus semper. Mauris dignissim ultrices diam, eu mattis lorem venenatis egestas.
Etiam vel ex in lacus rhoncus vestibulum. Cras sapien ligula, sodales at auctor non, bibendum vel eros. Nam ultrices aliquam dolor sed efficitur. Aliquam a quam vel est gravida pulvinar sed a magna. Etiam efficitur convallis enim ac ultrices.
Maecenas rhoncus tortor at erat auctor pharetra. Donec sodales sem diam, nec cursus nunc iaculis id. Morbi porttitor, dolor at blandit dictum, diam magna maximus leo, sit amet tristique lorem ipsum in nulla. Donec id lacinia orci.

Nullam vestibulum suscipit sollicitudin. Donec nec fermentum massa, in dignissim dui. Pellentesque augue orci, lobortis malesuada ante et, hendrerit vestibulum magna. Nullam feugiat nulla lacus, eget aliquam metus lacinia fringilla.
Suspendisse potenti. Duis varius interdum orci eget vulputate. Ut volutpat feugiat luctus. Nam et efficitur sapien. Donec at ex nibh. Vestibulum hendrerit augue vel suscipit iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Nullam ac commodo felis. Morbi purus ligula, pharetra non eros at, iaculis pharetra arcu. Maecenas vitae odio id ante consequat dignissim vel sit amet metus. Aenean in sem elit. Maecenas ut tellus mauris. Cras tristique ex at blandit ornare.
Ut maximus massa a dui accumsan, eget varius enim ultrices. Maecenas consequat venenatis mi, at tempor nunc venenatis quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec a tortor felis.
Cras pulvinar neque ut quam luctus, sollicitudin malesuada ipsum faucibus. Proin placerat lectus turpis, nec rutrum nibh euismod a. Donec a consequat urna. Phasellus sed metus dui.

Praesent sed neque bibendum, dictum est sed, convallis leo. Sed mi urna, commodo id justo eget, molestie auctor leo. Donec augue mauris, finibus nec nulla sit amet, luctus pulvinar felis. Nunc scelerisque congue augue id tristique.
Pellentesque gravida sed sapien in pulvinar. In sed nulla sit amet nisi tempus varius. Donec ac purus id sem condimentum cursus.

Nullam pellentesque diam eu metus egestas, id accumsan enim ullamcorper. Nulla sed lacinia libero, ac hendrerit quam. Vivamus egestas condimentum quam, vitae hendrerit magna accumsan id. Morbi tincidunt ornare nisl, nec aliquet erat cursus non.
Donec vestibulum odio vel consectetur hendrerit. Ut nec volutpat orci. Donec id placerat ex, id fringilla purus. 
]]

local file2 = io.open(file_name, 'w+')
file2:write(text)
file2:close()

local file3 = 'teste3.txt'
file3 = io.open(file3, 'a')
for i = 1, 10 do
    file3:write('text ')
end
file3:close()
