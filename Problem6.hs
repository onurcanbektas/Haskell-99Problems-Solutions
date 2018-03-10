module Q6 where

-- @onurcanbektas

import Problem5

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome xs
 | ( (myReverse' xs) == xs ) = True
 | otherwise = False


-- Or, @onurcanbektas

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' xs
 |( head xs ) == (last xs) = isPalindrome' . tail . init $ xs
 | otherwise = False

-- Or

isPalindrome'' :: (Eq a) => [a] -> Bool
isPalindrome'' []  = True
isPalindrome'' [_] = True
isPalindrome'' xs  = (head xs) == (last xs) && (isPalindrome' $ init $ tail xs)