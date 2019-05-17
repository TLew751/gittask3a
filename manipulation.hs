rev xs n = if( odd n ) then reverse xs else xs

reverseSecond :: [String] -> [String]
reverseSecond [] = []
reverseSecond [x] = [x]
reverseSecond (x:y:xs) = x : (reverse y) : reverseSecond xs

trial xs 
  | (length xs >= 20) = take 20 xs : ( trial (drop 20 xs) )
  | otherwise = take (length xs) xs : []