-- https://www.hackerrank.com/challenges/save-the-prisoner/problem

compute :: [Int] -> [Int]
compute [] = []
compute (n:m:s:xs) 
  | index == 0 = n : compute xs -- since it is 1 based indexing.
  | otherwise  = index : compute xs
  where
      index = mod ((s-1)+m) n

main :: IO()
main = interact $ unlines . map show . compute . map read . tail . words
