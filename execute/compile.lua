local dofile = function(filename)
	local f = assert(loadfile(filename))
	return f()
end

local f = load("i = i + 1")
i = 0
f()
print(i)
f()
print(i)
