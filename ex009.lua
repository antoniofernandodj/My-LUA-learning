--[[
    In this file i will make some tests with
    ultil and while functions
]]--

print('\nFOR LOOP!\n')
local j = 1
while j <= 10 do
    local i = 1
    while i <= 10 do
        print(i..' x '..j..' = '..tostring(i*j))
        i = i + 1
    end
    print('--------------')
    j = j + 1
end


print('\nUNTIL LOOP!\n')
local j = 1
repeat
    local i = 1
    repeat
        print(i..' x '..j..' = '..tostring(i*j))
        i = i + 1
    until i > 10
    print('--------------')
    j = j + 1
until j > 10

print('\nFOR LOOP!\n')
for j = 1, 10 do
    for i = 1, 10 do
        print(i..' x '..j..' = '..tostring(i*j))
    end
    print('--------------')
end