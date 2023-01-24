import Data.Char (ord)
import Data.List (maximumBy)

getScore :: Char -> Int
getScore c = (ord c - ord 'a') + 1

scoreOrdering :: String -> String -> Ordering
scoreOrdering x y = if scoreX < scoreY then LT else GT
  where
    scoreX = sum $ map getScore x
    scoreY = sum $ map getScore y

high :: String -> String
high = maximumBy scoreOrdering . words
