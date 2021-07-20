-- https://www.hackerrank.com/challenges/save-the-prisoner/problem

solve :: [Int] -> [Int]
solve [] = []
solve (n:m:s:xs) 
  | index == 0 = n : solve xs -- since it is 1 based indexing.
  | otherwise  = index : solve xs
  where
      index = mod ((s-1)+m) n

main :: IO()
main = interact $ unlines . map show . solve . map read . tail . words
