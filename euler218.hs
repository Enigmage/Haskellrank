compute :: [String] -> [String]
compute xs = replicate (length xs) (show 0)

solution :: String -> String
solution = unlines . compute . tail . words

main :: IO()
main = interact solution
