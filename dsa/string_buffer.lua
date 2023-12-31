local buff = ""
for line in io.lines() do
	buff = buff .. line .. "\n"
end

local t = {}
for line in io.lines() do
	t[#t + 1] = line .. "\n"
end
local s = table.concat(t)

local t2 = {}
for line in io.lines() do
	t2[#t2 + 1] = line
end
local s2 = table.concat(t2, "\n")
