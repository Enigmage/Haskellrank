lcmList :: [Int] -> Int
lcmList [] = 1
lcmList (x:xs) = lcm x (lcmList xs)

gcdList :: [Int] -> Int
gcdList  [] = 0
gcdList (x : xs) = gcd x (gcdList xs)

compute :: [Int] -> [Int]
compute (x:_:xs) = [y | y <- checkList, y `mod` lcmFirst == 0, hcfSecond `mod` y == 0]
    where
        firstList = take x xs
        secondList = drop x xs
        lcmFirst = lcmList firstList
        hcfSecond = gcdList secondList
        checkList = [lcmFirst..hcfSecond]

main :: IO()
main = interact $ show . length . compute . map read . words
