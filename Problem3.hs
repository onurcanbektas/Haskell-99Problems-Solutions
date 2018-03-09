module Q3 where

-- @onurcanbektas

import Data.List

elementAt :: Int -> [a] -> a
elementAt x xs 
 | x > (length xs) = error "The size of the list is less than the first argument that is provided!!"
 | x <= 0 = error "The first argument must be a positive integer" -- or ( x == 0 ) = do { something } 
 | otherwise = computeElementAt x xs
  where
   computeElementAt :: Int -> [a] -> a
   computeElementAt 1 xs = head xs
   computeElementAt x xs = computeElementAt (x-1) (tail xs)

