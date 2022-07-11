--[[In this file I will study some control flow functions, like
for looping, while, until and things around this]]--

--Numeric for
for i = 1, 10, 0.1 do
    print(i)
    i = i+1
end
--[[
1
1.1
1.2 ...
]]

print('\n########################\n')

for i = 10, 1, -0.1 do
    print(i)
    i = i+1
end
--[[
10
9.9
9.8
9.7 ...
]]

print('\n########################\n')

for i = 1, 10 do
    print(i)
    i = i+1
end
--[[
1
2
3 ...
]]

print('\n######################## getting exotic...\n')

local x = 3
for i = x, math.exp(x), math.sqrt(x) do
    print(i)
    i = i+1
end
--[[
1
2
3 ...
]]

print('\n########################\n')

--Generic for
days = {
    ['primeiro dia'] = 'monday',
    ['segundo dia'] = 'tuesday',
    ['terceiro dia'] = 'wednesday',
    ['quarto dia'] = 'thursday',
    ['quinto dia'] = 'friday',
    ['sexto dia'] = 'saturday',
    ['sétimo dia'] = 'sunday'
}

for key, day in pairs(days) do
    print(key..': '..day)
end

print('\n########################\n')

days = {
    "one",
    "two",
    "three"
}

for index, day in ipairs(days) do
    print(index..': '..day)
end

print('\n########################\n')

local i = 1
while i < 100 do
    print(i)
    i = i * 2
end

a = {'luan', 'joe', 'james', 'ron', 'amira'}

local j = 1
local found = false
while not found do
    if a[j] == 'ron' then
        found = true
        print('ron was found in position '..j)
    else
        j = j+1
    end
end

letters = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'}

local p = 1
local searched = 'e'
while letters[p] do
    if letters[p] == searched then
        break
    end
    p = p + 1
end

print('letter '..searched..' found in position '..p)
