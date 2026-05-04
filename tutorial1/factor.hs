nextFactor :: Int -> Int -> Int
nextFactor k n = if n `mod` k == 0 then k else nextFactor (k + 1) n

smallestFactor :: Int -> Int
smallestFactor = nextFactor 2

getFactors :: Int -> [Int]
getFactors n = removeDuplicates $ map (flip nextFactor n) [2 .. n - 1]

numFactors :: Int -> Int
numFactors = length . getFactors

removeDuplicates :: (Eq a) => [a] -> [a]
removeDuplicates [] = []
removeDuplicates [x] = [x]
removeDuplicates (x : xs) = if x `elem` xs then removeDuplicates xs else x : removeDuplicates xs