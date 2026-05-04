type Month = Integer

daysInMonth :: Month -> Integer -> Integer
daysInMonth 1 _ = 31
daysInMonth 2 y
  | y `mod` 4 == 0 = 29
  | otherwise = 28
daysInMonth 3 _ = 31
daysInMonth (4) _ = 30
daysInMonth (5) _ = 31
daysInMonth (6) _ = 30
daysInMonth (7) _ = 31
daysInMonth (8) _ = 31
daysInMonth (9) _ = 30
daysInMonth (10) _ = 31
daysInMonth (11) _ = 30
daysInMonth (12) _ = 31

data Date = Date Integer Month Integer

validDate :: Date -> Bool
validDate (Date y m d) = d >= 1 && d <= daysInMonth m y