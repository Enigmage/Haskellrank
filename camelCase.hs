{-# LANGUAGE OverloadedStrings #-}

import Data.Text (splitOn)
import Data.Char (toUpper, toLower)

toCamelCase :: String -> String
toCamelCase str = unwords $ splitOn "-" str

-- f :: [String] -> [String]
-- f (x: xs) = toUpper x : map toLower xs
