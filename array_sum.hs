-- Problem : https://www.hackerrank.com/challenges/simple-array-sum/submissions

main :: IO()
main = interact $ show . sum . map read . tail . words
