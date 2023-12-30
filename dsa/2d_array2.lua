local mt = {}
for i = 1, N do
	local aux = (i - 1) * M
	for j = 1, M do
		mt[aux + j] = 0
	end
end
