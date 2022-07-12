--[[
    Understanding scopes, local and global
]]--

local function show(n)
    m = 'Showing: '
    print(m..n)
end

show('test')
print(m)
--The variable declared inside a function is accessible unless
--you use local var to declare the variable

local function show2(n)
    local t = 'Showing: '
    print(t..n)
end

show2('strawberry')
print(t) -- t returns nill

local temperature = 10
if temperature < 15 then
    local day = 'friday'
    print("was very cold in "..day)
else
    print('not so cold...')
end

print(day) -- Not accessible

local temperature = 30
if temperature > 27 then
    day = 'sunday'
    print("was very war this "..day)
else
    print('not so warm...')
end

print(day) -- Accessible