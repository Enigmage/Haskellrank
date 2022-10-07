fizzbuzz :: [Int] -> [String]
fizzbuzz = map convert
    where
        convert x
          | mod x 15 == 0 = "FizzBuzz"
          | mod x 5  == 0 = "Buzz"
          | mod x 3  == 0 = "Fizz"
          | otherwise     = show x

main :: IO()
main = (putStrLn . unlines . fizzbuzz)[1..100]

-- main :: IO()
-- main = do
--     putStrLn $ (unlines . fizzbuzz)[1..100]
