-- https://www.hackerrank.com/challenges/day-of-the-programmer/problem

getDate :: Int -> String
getDate n 
       | n < 1918 = if mod n 4 == 0 then "12.09." ++ show n else "13.09." ++ show n
       | n == 1918 = "26.09." ++ show n
       | otherwise = if mod n 400 == 0 || mod n 4 == 0 && mod n 100 /= 0 then "12.09." ++ show n else "13.09." ++ show n


main :: IO()
main = interact $ getDate . read
