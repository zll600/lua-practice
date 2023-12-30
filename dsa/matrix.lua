--> a[M, K] * b[K, N]
function multi1(a, b)
	local c = {}
	local M = #a
	local K = #a[1]
	local N = #b[1]
	for i = 1, M do
		for j = 1, N do
			c[i][j] = 0
			for k = 1, K do
				c[i][j] = c[i][j] + a[i][k] * b[k][j]
			end
		end
	end
end

--> a[M, K] * b[K, N]
function mult2(a, b)
	local c = {}
	local M = #a
	local K = #a[1]
	local N = #b[1]
	for i = 1, M do
		for k = 1, K do
			for j = 1, N do
				c[i][j] = c[i][j] + a[i][k] * b[k][j]
			end
		end
	end
end

function mult(a, b)
	local c = {}
	for i = 1, #a do
		local resultline = {}
		for k, va in pairs(a[i]) do
			for j, vb in pairs(b[k]) do
				local res = (resultline[j] or 0) + va * vb
				resultline[j] = (res ~= 0) and res or nil
			end
		end
	end
	return c
end
