--[[

in this file i will play around
to understand about strings

]]--

--I use this to clear the dirty
--In the terminal before code
os.execute('clear')

a = 'this is a single quoted string'
b = "this is a double quoted string"
c = "I can put a 'single quote' inside a double quote,"
d = 'and i can put "double quote" inside a single quote too' 
e = 'I can join two strings '
f = 'using dot-dot operator (..)'
g = e..f
h = [[I can join multiple lines
using double square brackets]]
i = 'I can join '..
'multiple lines '..
'using multiple dot-dot '..
'operations'

print(a)
print(b)
print(c)
print(d)
print(g)
print(h)
print(i)
