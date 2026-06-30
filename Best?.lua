local src = game:HttpGet("https://raw.githubusercontent.com/makarmatvij7-svg/VERYOP/main/Best%3F.lua")

-- Lua 5.1 doesn't support 'goto'. Replace all goto statements with comments.
src = src:gsub("(goto%s+[%w_]+)", "-- %1 -- goto not supported in Lua 5.1")
src = src:gsub("(::[%w_]+::)", "-- %1 -- label removed for Lua 5.1")

local func, err = loadstring(src)
if not func then
    print("FAILED:", err)
else
    print("COMPILED! Executing VERYOP...")
    func()
end
