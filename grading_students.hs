-- Problem : https://www.hackerrank.com/challenges/grading/problem

roundGrades :: Int -> Int
roundGrades x   | x >= 38 && (m5 - x) < 3 = m5
                | otherwise = x
                where m5 = x + (5 - x `mod` 5)

main :: IO()
main = interact $ unlines . map (show . roundGrades . read) . tail . words
