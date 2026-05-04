maxi :: (Num a, Ord a) => a -> a -> a
maxi x y
  | x > y = x
  | y > x = y
  | otherwise = x