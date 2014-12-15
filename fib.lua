function fib(n)
   if n == 0 then
      return 0
   elseif n == 1 then
      return 1
   end
   return fib(n-1) + fib(n-2)
end

function fib_fast(n)
   local last1 = 0
   local last2 = 1
   local new
   for i=2,n do
      new = last1 + last2
      last1, last2 = last2, new
      print(new)
   end
   return new
end


      
