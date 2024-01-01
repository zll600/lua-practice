function getfield(f)
	local v = _G
	for w in string.gmatch(f, "[%a_][%w_]*") do
		-- print(w)
		v = v[w]
	end
	return v
end

function setfield(f, v)
	local t = _G
	for w, d in string.gmatch(f, "([%a_][%w_]*)(%.?)") do
		if d == "." then
			t[w] = t[w] or {}
			t = t[w]
		else
			t[w] = v
		end
	end
end

print(_G)
print(#_G)
for i = 1, #_G do
	print(_G[i])
end
print(getfield("io.read"))

setfield("t.x.y", 10)
print(t.x.y)
print(getfield("t.x.y"))
