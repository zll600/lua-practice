print(_ENV == _G)
print(_ENV._G == _G)
_ENV = nil
_ENV = {}
_ENV._G = _G
_ENV._G.print(_ENV == _G)
_ENV._G.print(_ENV._G == _G)

a = 13
local a = 12
print(a)
print(_ENV.a)
local print, sin = print, math.sin
_ENV = nil
print(13)
print(sin(13))
print(math.cos(13))
