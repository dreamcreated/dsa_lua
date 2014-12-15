
function hailstone (n)
   local length = 1
   local seq = {n}
   while(1 < n) do
      length = length + 1
      if (n % 2 == 0) then
         n = n / 2
      else
         n = 3 * n + 1
      end
    seq[length] = n
   end
   seq[length] = 1

   for i=1,#seq do
      print(seq[i])
   end
   
   return seq
end

