module Q4 where

-- @onurcanbektas

myLength :: Eq a => [a] -> Int
myLength [] = 0
myLength ys = go 1 ys
 where
  go :: Eq a => Int -> [a] -> Int
  go n xs
   | ( (take n xs) == (take (n+1) xs) ) = n
   | otherwise = go (n+1) xs


-- @onurcanbektas

myLength' :: [a] -> Int
myLength' [] = 0
myLength' xs = go xs 1
 where
  go :: [a] -> Int -> Int
  go xs n
   | [x :: Int | y <- (zip xs [1..(n+1)]), let x = snd y] == [1..n] = n
   | otherwise = go xs (n+1)


-- or
{-- | works only wit the flag -XScopedTypeVariables

{-# LANGUAGE ScopedTypeVariables #-}

myLength'' :: forall a. Eq a => [a] -> Int
myLength'' [] = 0
myLength'' ys = go 1 ys
 where
  go :: Int -> [a] -> Int
  go n xs
   | take n xs == take (n+1) xs = n
   | otherwise = go (n+1) xs
--}

-- or simply (I shamed when I saw this solution)

myLength'''          :: [a] -> Int
myLength''' []        =  0
myLength''' (_:xs)    =  1 + myLength''' xs

-- or elegantly

myLengthAlt :: [a] -> Int
myLengthAlt = sum . map (\_->1)