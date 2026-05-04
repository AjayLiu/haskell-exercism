-- sumsq n returns 1*1 + 2*2 + ... + n*n

-- >>> sumsq (3)
-- 14

sumsq :: Integer -> Integer
-- sumsq n
--   | n == 1 = 1
--   | otherwise = n * n + sumsq (n - 1)
sumsq n = sum (map (^ 2) [1 .. n])
