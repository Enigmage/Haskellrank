getMiddle :: String -> String
getMiddle s = if even $ length s then [s !! (mid - 1), s !! mid] else [s !! mid]
  where
    mid = length s `div` 2
