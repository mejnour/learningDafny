   while i < n
      invariant 0 <= i <= n
      decreases n - i
   {
      i := i + 1;
   }