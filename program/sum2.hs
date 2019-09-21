sum2 [] = 0
sum2 (n:ns) = n + sum2 ns

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
               where
                  smaller = [a | a <- xs, a <= x]
                  larger  = [b | b <- xs, b > x]
                     
