-- Not optimized.
import Data.List (sortBy)
-- import Data.Sequence (Seq(..), (<|), (|>), (><))
-- import qualified Data.Sequence as Seq

type Pairs = (Int, String)
-- dashify :: [Pairs] -> [Pairs]
-- dashify = map (\x -> (fst x, "-"))

dashify :: [Pairs] -> Int -> [Pairs]
dashify [] _ = []
dashify (x:xs) h = if h > 0 then (fst x, "-") : dashify xs (h-1) else x : dashify xs h

merge :: [Pairs] -> [Pairs] -> [Pairs]
merge [] xs = xs
merge xs [] = xs
merge (x:xs) (y:ys) = if fst x <= fst y then x : merge xs (y:ys) else y: merge (x:xs) ys

-- Top down
-- mergesort :: [Pairs] -> [Pairs]
-- mergesort [] = []
-- mergesort [(x,y)] = [(x,y)]
-- mergesort xs = merge firstHalf secondHalf
--     where
--         half = length xs `div` 2
--         firstHalf = mergesort $ take half xs
--         secondHalf = mergesort $ drop half xs
--

-- Bottom up
mergesort :: [Pairs] -> [Pairs]
mergesort = mergeAll . map (:[]) 
  where
    mergeAll [] = []
    mergeAll [t] = t
    mergeAll xs  = mergeAll (mergePairs xs)

    mergePairs (x:y:xs) = merge x y:mergePairs xs
    mergePairs xs = xs

sortPredicate :: Pairs -> Pairs -> Ordering
sortPredicate x y
  | fst x <= fst y = LT
  | otherwise = GT

sortFunc :: [Pairs] -> [Pairs]
sortFunc = sortBy sortPredicate


countSort :: [Pairs] -> [Pairs]
countSort xs = sortFunc final
    where
        half = length xs `div` 2
        final = dashify xs half

joinPairs :: [Pairs] -> String
joinPairs [] = ""
joinPairs (x:xs) = snd x ++ " " ++ joinPairs xs

tuplify :: [String] -> Pairs
tuplify [x, y] = (read x :: Int, y)

main :: IO()
main = interact $ joinPairs . countSort . map (tuplify . words)  . tail . lines
