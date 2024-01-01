local mt = {
	__index = function(t)
		return t.___
	end,
}
function setDefault(t, d)
	t.___ = d
	setmetatable(t, mt)
end

local tab = { x = 10, y = 20 }
print(tab.x, tab.z)
setDefault(tab, 0)
print(tab.x, tab.z)
