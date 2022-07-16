--[[
    Examples about coroutines and yields
]]--

local co = coroutine.create(
    function()
        print("\nHello comrade")
        coroutine.yield()
        print("Hello homeland")
        coroutine.yield()
        print("I will sleep...\n")
        coroutine.yield()
        print("\nI woke up...")
        coroutine.yield()
        print("Hello world!")
    end
)

print(co)
--thread: 0x5558039b...

print(coroutine.status(co))
--suspended

coroutine.resume(co)
--Hello...

print(coroutine.status(co))
--suspended

coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)


print(coroutine.status(co))
--dead

local co2 = coroutine.create(
    function()
        for i = 1, 10 do
            print ("resumindo a co-rotina", i)
            coroutine.yield()
        end
    end
)

coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)
