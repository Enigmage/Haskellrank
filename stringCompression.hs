-- aaabbbcccdaef -> a3b3c3daef

filter1s :: Int -> String
filter1s x = if x == 1 then "" else show x

compressMessage :: Int -> String -> String
compressMessage _ "" = ""
compressMessage occ (x:xs)
  | y == ' ' = x : filter1s occ
  | x == y   = compressMessage (occ + 1) xs
  | x /= y   = [x] ++ filter1s occ ++ compressMessage 1 xs
  where
      y = if null xs then ' ' else head xs

solve :: String -> String
solve = compressMessage 1

main :: IO()
main = interact solve
