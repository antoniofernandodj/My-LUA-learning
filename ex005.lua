--[[ The if else statements can be declared in one line or
without a organized identation. Lua does not see identations
or new lines, only reserved words such IF, THEN, ELSE, DO or
END, in lowercase obviously.]]--

local money = 1200
if money > 2000 then
    print('My money is '..money..', will go to Paris!')
else
    print('My money is '..money..', I will get a pizza...')
end

local money = 1500
if money > 2000 then
    print('My money is '..money..', will go to Paris!')
elseif money > 1500 then
    print('My money is '..money..', will go to Lisboa!')
elseif money > 1000 then
    print('My money is '..money..', will go to a city inside my country.')
else
    print('My money is '..money..', I will get a pizza...')
end

---First function.
---This is a docstring.
---Accepts many lines and specifies
---in the IDE what the function does.
---Also, this function does not have a return, 
---it only prints something on screen
local function that()
    print('hello!')
end

---Function with variables. Below, some typehints to 
---show to the IDE the types of parameters and the returns
---@param phrase string
---@return nil
local function say(phrase)
    print(phrase)
end

---This is the way we use upper in lua
---@param phrase string
---@return nil
local function shout(phrase)
    print(string.upper(phrase))
end

local this = true
if this then that() end

local this = false
if this then say('hello!') else shout('hello!') end

---First function with return
---@param x number
---@return number
local function double(x)
    local db = 2*x
    return db
end

-- Printing the double of 4...
print(double(4))

---Returns the triple of a number
---@param x number
---@return number
local function triple(x)
    return 3*x
end

-- Printing the triple of 5...
print(triple(5))

---This is a function returning a table. 
---A way near this is used to oop in LUA. 
---Also, we can declare a function as a 
---assignment to a variable
---@param name string
---@param age number
---@return table
local person = function(name, age)
    return {
        ['name'] = name,
        ['age'] = age
    }
end

local p1 = person('Jeff', 18)
print('The name of p1 is '..p1.name..', and his age is '..p1.age)

-- Lua5.1 can concatenate numbers to strings without convert it before

---Function receiving a table and returning a string
---@param person table
---@return string
local function get_name(person)
    return person.name
end

local name = get_name(p1)
print('the name of p1 is '..name)

---Function receiving a table and returning a number
---@param person table
---@return number
local function get_age(person)
    return person.age
end

local age = get_age(p1)
print('the age of p1 is '..age)
