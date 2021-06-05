-- Problem : https://www.hackerrank.com/challenges/between-two-sets/problem

compute :: [Int] -> [Int]
compute (x:_:xs) = [y | y <- checkList, y `mod` lcmFirst == 0, hcfSecond `mod` y == 0]
    where
        firstList = take x xs
        secondList = drop x xs
        lcmFirst = foldr lcm 1 firstList
        hcfSecond = foldr gcd 0 secondList
        checkList = [lcmFirst..hcfSecond]

main :: IO()
main = interact $ show . length . compute . map read . words
