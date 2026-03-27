module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
  | n <= 0 = Nothing
  | n <= 1 = Just 0
  | otherwise = fmap (+ 1) (if even n then collatz (n `div` 2) else collatz (3 * n + 1))