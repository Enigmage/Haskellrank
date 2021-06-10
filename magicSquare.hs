-- https://www.hackerrank.com/challenges/magic-square-forming/problem

matrixify :: [Int] -> [[Int]]
matrixify [a, b, c, d, e, f, g, h, i] = [[a,b,c], [d,e,f], [g,h,i], [a,d,g], [b,e,h], [c, f, i], [a,e,i], [c,e,g]]

sumList :: [[Int]] -> [Int]
sumList (x:xs) = sum x : sumList xs

main :: IO ()
main = interact $ sumList . matrixify . map read . words



