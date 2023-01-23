solve :: [String] -> Int
solve (_: y) = x * 2 where x = read y :: Integer

main :: IO()
main = interact $ show . solve . words
