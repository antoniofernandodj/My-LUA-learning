local lib = require "ex010b"
lib.function_that_does_nothing()
--This functions does nothing

-- Calculating the area of a circle of radius = 15
local r = 15
local area = lib.PI*r^2
print('area = '..area)
--area = 706.8582

-- Calcutating the gravity force between a 60Kg
-- body and a 5.972 × 10^24 Kg planet of 6371Km radius
local distance = 6371
local body_mass = 60
local planet_mass = 5.972*10^(24)
local F = (lib.G * body_mass * planet_mass)/(distance^2)
print('F = '..(F/1000)..'KN')
--F = 589198.40557348KN

-- Sum of two complex numbers
C1 = lib.Complex(1, 2)
C2 = lib.Complex(1, -2)
local n1 = lib.complex_add(C1, C2)
print(n1.real..' + '..n1.imag..'i')

-- Product of two complex numbers
C1 = lib.Complex(3, -2)
C2 = lib.Complex(-7, 2)
local n2 = lib.complex_mult(C1, C2)
print(lib.format_complex(n2))

for i1 = -1, 1 do
    for j1 = -1, 1 do
        for i2 = -1, 1 do
            for j2 = -1, 1 do
                C1 = lib.Complex(i1, j1)
                C2 = lib.Complex(i2, j2)
                local n = lib.complex_add(C1, C2)
                print(
                    '('..lib.format_complex(C1)..')'..
                    ' + '..'('..lib.format_complex(C2)..')'..
                    ' = '..lib.format_complex(n)
                )
            end
        end
    end
end

for i1 = -1, 1 do
    for j1 = -1, 1 do
        for i2 = -1, 1 do
            for j2 = -1, 1 do
                C1 = lib.Complex(i1, j1)
                C2 = lib.Complex(i2, j2)
                local n = lib.complex_mult(C1, C2)
                print(
                    '('..lib.format_complex(C1)..')'..
                    ' x '..'('..lib.format_complex(C2)..')'..
                    ' = '..lib.format_complex(n)
                )
            end
        end
    end
end

--[[
output:
(-1 - i) + (-1 - i) = -2 - 2i
(-1 - i) + (-1) = -2 - i
(-1 - i) + (-1 + i) = -2
(-1 - i) + (0 - i) = -1 - 2i
(-1 - i) + (0) = -1 - i
(-1 - i) + (0 + i) = -1
(-1 - i) + (1 - i) = 0 - 2i
(-1 - i) + (1) = 0 - i
(-1 - i) + (1 + i) = 0
(-1) + (-1 - i) = -2 - i
(-1) + (-1) = -2
(-1) + (-1 + i) = -2 + i
(-1) + (0 - i) = -1 - i
(-1) + (0) = -1
(-1) + (0 + i) = -1 + i
(-1) + (1 - i) = 0 - i
(-1) + (1) = 0
(-1) + (1 + i) = 0 + i
(-1 + i) + (-1 - i) = -2
(-1 + i) + (-1) = -2 + i
(-1 + i) + (-1 + i) = -2 + 2i
(-1 + i) + (0 - i) = -1
(-1 + i) + (0) = -1 + i
(-1 + i) + (0 + i) = -1 + 2i
(-1 + i) + (1 - i) = 0
(-1 + i) + (1) = 0 + i
(-1 + i) + (1 + i) = 0 + 2i
(0 - i) + (-1 - i) = -1 - 2i
(0 - i) + (-1) = -1 - i
(0 - i) + (-1 + i) = -1
(0 - i) + (0 - i) = 0 - 2i
(0 - i) + (0) = 0 - i
(0 - i) + (0 + i) = 0
(0 - i) + (1 - i) = 1 - 2i
(0 - i) + (1) = 1 - i
(0 - i) + (1 + i) = 1
(0) + (-1 - i) = -1 - i
(0) + (-1) = -1
(0) + (-1 + i) = -1 + i
(0) + (0 - i) = 0 - i
(0) + (0) = 0
(0) + (0 + i) = 0 + i
(0) + (1 - i) = 1 - i
(0) + (1) = 1
(0) + (1 + i) = 1 + i
(0 + i) + (-1 - i) = -1
(0 + i) + (-1) = -1 + i
(0 + i) + (-1 + i) = -1 + 2i
(0 + i) + (0 - i) = 0
(0 + i) + (0) = 0 + i
(0 + i) + (0 + i) = 0 + 2i
(0 + i) + (1 - i) = 1
(0 + i) + (1) = 1 + i
(0 + i) + (1 + i) = 1 + 2i
(1 - i) + (-1 - i) = 0 - 2i
(1 - i) + (-1) = 0 - i
(1 - i) + (-1 + i) = 0
(1 - i) + (0 - i) = 1 - 2i
(1 - i) + (0) = 1 - i
(1 - i) + (0 + i) = 1
(1 - i) + (1 - i) = 2 - 2i
(1 - i) + (1) = 2 - i
(1 - i) + (1 + i) = 2
(1) + (-1 - i) = 0 - i
(1) + (-1) = 0
(1) + (-1 + i) = 0 + i
(1) + (0 - i) = 1 - i
(1) + (0) = 1
(1) + (0 + i) = 1 + i
(1) + (1 - i) = 2 - i
(1) + (1) = 2
(1) + (1 + i) = 2 + i
(1 + i) + (-1 - i) = 0
(1 + i) + (-1) = 0 + i
(1 + i) + (-1 + i) = 0 + 2i
(1 + i) + (0 - i) = 1
(1 + i) + (0) = 1 + i
(1 + i) + (0 + i) = 1 + 2i
(1 + i) + (1 - i) = 2
(1 + i) + (1) = 2 + i
(1 + i) + (1 + i) = 2 + 2i
(-1 - i) x (-1 - i) = 0 + 2i
(-1 - i) x (-1) = 1 + i
(-1 - i) x (-1 + i) = 2
(-1 - i) x (0 - i) = -1 + i
(-1 - i) x (0) = 0
(-1 - i) x (0 + i) = 1 - i
(-1 - i) x (1 - i) = -2
(-1 - i) x (1) = -1 - i
(-1 - i) x (1 + i) = 0 - 2i
(-1) x (-1 - i) = 1 + i
(-1) x (-1) = 1
(-1) x (-1 + i) = 1 - i
(-1) x (0 - i) = 0 + i
(-1) x (0) = -0
(-1) x (0 + i) = -0 - i
(-1) x (1 - i) = -1 + i
(-1) x (1) = -1
(-1) x (1 + i) = -1 - i
(-1 + i) x (-1 - i) = 2
(-1 + i) x (-1) = 1 - i
(-1 + i) x (-1 + i) = 0 - 2i
(-1 + i) x (0 - i) = 1 + i
(-1 + i) x (0) = -0
(-1 + i) x (0 + i) = -1 - i
(-1 + i) x (1 - i) = 0 + 2i
(-1 + i) x (1) = -1 + i
(-1 + i) x (1 + i) = -2
(0 - i) x (-1 - i) = -1 + i
(0 - i) x (-1) = 0 + i
(0 - i) x (-1 + i) = 1 + i
(0 - i) x (0 - i) = -1
(0 - i) x (0) = 0
(0 - i) x (0 + i) = 1
(0 - i) x (1 - i) = -1 - i
(0 - i) x (1) = 0 - i
(0 - i) x (1 + i) = 1 - i
(0) x (-1 - i) = 0
(0) x (-1) = -0
(0) x (-1 + i) = -0
(0) x (0 - i) = 0
(0) x (0) = 0
(0) x (0 + i) = 0
(0) x (1 - i) = 0
(0) x (1) = 0
(0) x (1 + i) = 0
(0 + i) x (-1 - i) = 1 - i
(0 + i) x (-1) = -0 - i
(0 + i) x (-1 + i) = -1 - i
(0 + i) x (0 - i) = 1
(0 + i) x (0) = 0
(0 + i) x (0 + i) = -1
(0 + i) x (1 - i) = 1 + i
(0 + i) x (1) = 0 + i
(0 + i) x (1 + i) = -1 + i
(1 - i) x (-1 - i) = -2
(1 - i) x (-1) = -1 + i
(1 - i) x (-1 + i) = 0 + 2i
(1 - i) x (0 - i) = -1 - i
(1 - i) x (0) = 0
(1 - i) x (0 + i) = 1 + i
(1 - i) x (1 - i) = 0 - 2i
(1 - i) x (1) = 1 - i
(1 - i) x (1 + i) = 2
(1) x (-1 - i) = -1 - i
(1) x (-1) = -1
(1) x (-1 + i) = -1 + i
(1) x (0 - i) = 0 - i
(1) x (0) = 0
(1) x (0 + i) = 0 + i
(1) x (1 - i) = 1 - i
(1) x (1) = 1
(1) x (1 + i) = 1 + i
(1 + i) x (-1 - i) = 0 - 2i
(1 + i) x (-1) = -1 - i
(1 + i) x (-1 + i) = -2
(1 + i) x (0 - i) = 1 - i
(1 + i) x (0) = 0
(1 + i) x (0 + i) = -1 + i
(1 + i) x (1 - i) = 2
(1 + i) x (1) = 1 + i
(1 + i) x (1 + i) = 0 + 2i
]]--