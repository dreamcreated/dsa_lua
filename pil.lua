function values(t)
   local i = 0
   return function()
      i = i + 1
      print("call iter times:"..i)
      return t[i]
   end
end

local function iter(a, i)
   i = i + 1
   local v = a[i]
   if v then
      return i,v
   end
end

function _ipairs(t)
   return iter,t,0
end

--[[
以下代码等同于for循环:
local function callback(k,v) end
for k,v in _ipairs(t) do
   callback(k,v)
end
--]]
function expand_for(t, callback)
   local _func, _t, _c = _ipairs(t)
   while true do
      _c , _v = _func(_t, _c)
      if _v == nil then break end
      callback(_c, _v)
   end
end
