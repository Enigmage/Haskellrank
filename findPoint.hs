-- Problem : https://www.hackerrank.com/challenges/find-point/problem

compute :: [Int] -> [(Int, Int)] 
compute [] = []
compute (px : py : qx : qy : xs) = [(rx, ry)] ++ compute(xs)
    where
        rx = qx + (qx - px)
        ry = qy + (qy - py)

convert :: [(Int, Int)] -> [String]
convert = map (\x -> (show . fst)x ++ " " ++ (show . snd)x) 

main :: IO()
main = interact $ unlines . convert . compute . map read . tail . words

