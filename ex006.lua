local a1 = true and false
print(a1)

local a2 = true or false
print(a2)

local b = not false
print(b)

local c = not true or not false
print('c: '..tostring(c))

local d = 1 or 0
print('d: '..tostring(d))

local e = 0 and 0
print('e: '..tostring(e))

local f = 0 and 1
print('f: '..tostring(f))

local g1 = '' and 'hello'
print('g1: '..tostring(g1))

local g2 = 'hello' and ''
print('g2: '..tostring(g2))

local h1 = 'hello' and 'world' and '!'
print('h1: '..tostring(h1))

local h2 = 'hello' or 'world' or '!'
print('h2: '..tostring(h2))

local i = [==[
1 hello
2 world!]==]

print(i)

local j = 4 > 7
print('j: '..tostring(j))

local k = 5.0 == 5
print('k: '..tostring(k))

local l = 10/5 == 2
print('l: '..tostring(l))