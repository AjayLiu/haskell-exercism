multiply :: (Num a) => [a] -> a
multiply [] = 0
multiply [x] = x
multiply (x : xs) = x * multiply xs

substitution :: Char -> Char -> String -> String
substitution _ _ [] = ""
substitution t r (x : xs) =
  if x == t
    then r : substitution t r xs
    else x : substitution t r xs

pythagorean :: Integer -> [(Integer, Integer, Integer)]
pythagorean n = [(a, b, c) | c <- [1 .. n], a <- [1 .. n], b <- [1 .. n], a * a + b * b == c * c]

-- isPermutation :: (Eq a) => [a] -> [a] -> Bool
-- isPermutation (x:xs) (y:ys) =

shortestAndLongest :: [String] -> (String, String)
shortestAndLongest words =
  ( foldl1 (\x acc -> if length x < length acc then x else acc) words,
    foldl1 (\x acc -> if length x > length acc then x else acc) words
  )
