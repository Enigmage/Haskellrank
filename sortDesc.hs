import Data.List (sortBy)

descendingOrder :: Integer -> Integer
descendingOrder = read . sortBy (flip compare) . show
