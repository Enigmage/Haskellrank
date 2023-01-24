buildTower :: Int -> [String]
buildTower n = reverse $ f (n + n - 1) 0
  where
    f (-1) _ = []
    f x y = concat (replicate y " " ++ replicate x "*" ++ replicate y " ") : f (x - 2) (y + 1)
