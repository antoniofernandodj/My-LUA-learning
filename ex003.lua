--[[
In this file i will study basic operations
around arithmethics, booleans, datatypes etc
]]--

a = 3
print(type(a))
b = 5
c = a/b

print(c)
print(type(c))

--[[ Floats and integers have the same
type: numbers ]]--

t = {'boy', 'girl'}
print(type(t))
-- Table type, the main data structure in LUA

print(t) -- Tables does not print so good
print(t[1]) -- table index starts in "1"

condition = true
print(condition)
condition = false
print(condition)
print(type(condition))
-- Boolean type have the first letter lower

num = "10"
print(type(num))
num = tonumber(num)
print(type(num))


print(
[[
This is the way we convert to
numbers from strings, using tonumber()
]]
)

num = 10.0
print(type(num))
num = tostring(num)
print(type(num))

print(
[[
And this is the way we convert to
strings from numbers, using tostring()
]]
)

condition = true
s = tostring(condition)
n = tonumber(condition)

print(condition)
print(s)
print(n)
print(type(s))
print(type(n))

print(
[[
is not possible to convert booleans to numbers
:(
]]
)
