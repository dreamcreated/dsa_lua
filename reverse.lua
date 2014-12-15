function reverse(t, low, high)
   if low < high then
      t[low], t[high] = t[high], t[low]
      reverse(t, low + 1, high - 1)
   end
end
