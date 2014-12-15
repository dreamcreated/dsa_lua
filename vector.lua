local vector = {}

vector.data = {}
vector.size = 0

function vector.insert(i, v)
   if i <= size then
      
   end
   
end

function vector.remove(i)
end

function vector.uniquify()
end

function vector.iterator(self)
   local i = 1
   return function()
      local temp = self.data[i]
      i = i + 1
      return temp
   end
end



return vector
