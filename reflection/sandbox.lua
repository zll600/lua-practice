local debug = require("debug")

-- unit: KB
local memlimit = 1000

local function checkmem()
	if collectgarbage("count") > memlimit then
		error("script uses too much memory")
	end
end

local steplimit = 1000

local count = 1000
local function step()
	checkmem()
	count = count + 1
	if count > steplimit then
		error("script uses too much CPU")
	end
end

local f = assert(loadfile(arg[1], "t", _ENV))

debug.sethook(step, "", 100)

f()
