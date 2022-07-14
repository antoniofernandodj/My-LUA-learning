return {
    PI = 3.141592,
    G = 6.6743*10^(-11),

    function_that_does_nothing = function()
        print('This functions does nothing')
    end,

    Complex = function(r, i)
        return {real = r, imag = i}
    end,

    complex_add = function(C1, C2)
        return {
            real = C1.real + C2.real,
            imag = C1.imag + C2.imag
        }
    end,

    complex_sub = function(C1, C2)
        return {
            real = (C1.real + C2.real),
            imag = (C1.imag + C2.imag)
        }
    end,

    complex_mult = function(C1, C2)
        return {
            real = (C1.real * C2.real) - (C1.imag * C2.imag),
            imag = (C1.real * C2.imag) + (C1.imag * C2.real)
        }
    end,

    format_complex = function(C)
        if C.imag*C.imag == 0 then
            return C.real
        else
            if C.imag*C.imag ~= 1 then
                if C.imag < 0 then
                    return C.real..' - '..(C.imag*(-1))..'i'
                else
                    return C.real..' + '..C.imag..'i'
                end
            else
                if C.imag < 0 then
                    return C.real..' - '..'i'
                else
                    return C.real..' + '..'i'
                end
            end
        end
    end
}