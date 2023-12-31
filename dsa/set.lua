function Set(list)
	local set = {}
	for _, l in ipairs(list) do
		set[l] = true
	end
	return set
end

reserved = Set({ "while", "end", "function", "local" })

local ids = {}

local s = "function test() end"
for w in string.gmatch(s, "[%a_][%w_]*") do
	if not reserved[w] then
		ids[w] = true
	end
end

for w in pairs(ids) do
	print(w)
end
