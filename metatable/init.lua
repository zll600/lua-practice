local Set = require("set-lib")

local s1 = Set.new({ 10, 20, 30, 50 })
local s2 = Set.new({ 30, 1 })

print(getmetatable(s1))
print(getmetatable(s2))

local s3 = s1 + s2
print(Set.tostring(s3))

print(Set.tostring((s1 + s2) * s1))

s1 = Set.new({ 2, 4 })
s2 = Set.new({ 4, 10, 2 })
print(s1 <= s2)
print(s1 < s2)
print(s1 >= s1)
print(s1 > s1)
print(s1 == s1 * s2)
