module Q2 where

-- @onurcanbektas

myButLast :: [a] -> a
myButLast [] = error "The list has to have at least 2 elements!"
myButLast [x] = error "The list has to have at least 2 elements!"
myButLast xs = last ( init xs )

-- Alternatively, @onurcanbektas

myButLast'' :: [a] -> a
myButLast'' [] = error "The list has to have at least 2 elements!"
myButLast'' [x] = error "The list has to have at least 2 elements!"
myButLast'' [x,y] = x
myButLast'' (_:xs) = myButLast xs

-- Or, 

myButLast' :: [a] -> a
myButLast' [] = error "The list has to have at least 2 elements!"
myButLast' [x] = error "The list has to have at least 2 elements!"
myButLast' x = (last . init) x

-- Or 

myButLastAlt :: [a] -> a
myButLastAlt = go (last . init)

  where
  	go _ [] = bad
    go _ [x] = bad
    go f xs = f xs
    bad = error "The list has to have at least 2 elements!"
