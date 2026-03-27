module Pangram (isPangram) where

import Data.Char (isAlpha, toLower)

isPangram :: String -> Bool
isPangram text = all (\t -> t `elem` textCleaned) ['a' .. 'z']
  where
    textCleaned = filter isAlpha (map toLower text)