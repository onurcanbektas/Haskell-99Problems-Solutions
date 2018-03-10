module Problem5 where

-- @onurcanbektas

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = ( myReverse xs ) ++ [x]

-- or a solution with linear time

myReverse' :: [a] -> [a]
myReverse' xs = snd $ auxReverse (xs, [])
  where auxReverse ([], bs)      = ([], bs)
        auxReverse ( a : as, bs) = auxReverse (as, a : bs)