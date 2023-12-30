numbers = { "one", "two", "three" }

revNumbers = {
	["one"] = 1,
	["two"] = 2,
	["three"] = 3,
}

revNumbers2 = {}
for k, v in pairs(numbers) do
	revNumbers2[v] = k
end

x = "two"
print(revNumbers[x])
print(revNumbers2[x])
