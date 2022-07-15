local arr = {'a', 'b', 'c', 'd', 'e'}

local matrix = {
    {00,01,02,03},
    {10,11,12,13},
    {20,21,22,23},
    {30,31,32,33},
}

print('the "for i, line in pairs(matrix) do" way of iterate...')
for i, line in pairs(matrix) do
    for j, item in pairs(line) do
        print('['..i..','..j..']'..': '..item)
    end
end

print('\nthe "for i = 1, #matrix[1] do" way of iterate...')
for i = 1, #matrix[1] do
    for j = 1, #matrix[1] do
        print('['..i..','..j..']'..': '..matrix[i][j])
    end
end

local people = {
    ['name of person'] = 'Alan',
    ['name of son'] = 'rich',
    ['address of house'] = 'yamel street, 1024, san diego',
    ['address of work'] = 'xis emme el street, 512, san diego'
}
print('')
for i, v in pairs(people) do
    print('the '..i..' is '..v)
end

local person = {
    name = 'Alan',
    son = 'Rich',
    house = 'yamel street, 1024, san diego',
    work = 'xis emme el street, 512, san diego'
}

print(people['name of person'])
print(person.name)
--this is the way we use table of index
--or table of variables

print(people['name of son'])
print(person.son)

print(people.money)
print(people['money in bank']) -- Both nil

--[[
output:

the "for i, line in pairs(matrix) do" way of iterate...
[1,1]: 0
[1,2]: 1
[1,3]: 2
[1,4]: 3
[2,1]: 10
[2,2]: 11
[2,3]: 12
[2,4]: 13
[3,1]: 20
[3,2]: 21
[3,3]: 22
[3,4]: 23
[4,1]: 30
[4,2]: 31
[4,3]: 32
[4,4]: 33

the "for i = 1, #matrix[1] do" way of iterate...
[1,1]: 0
[1,2]: 1
[1,3]: 2
[1,4]: 3
[2,1]: 10
[2,2]: 11
[2,3]: 12
[2,4]: 13
[3,1]: 20
[3,2]: 21
[3,3]: 22
[3,4]: 23
[4,1]: 30
[4,2]: 31
[4,3]: 32
[4,4]: 33

the name of person is Alan
the address of house is yamel street, 1024, san diego
the address of work is xis emme el street, 512, san diego
the name of son is rich
Alan
Alan
rich
Rich
nil
nil
]]--