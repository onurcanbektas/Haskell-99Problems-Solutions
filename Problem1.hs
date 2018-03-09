module Q1 where

-- @onurcanbektas

myLast :: [a] -> a
myLast [] = error "The list should be nonempt!"
myLast xs = last xs


-- Alternatively, which is way more cool!

myLastAlt :: [a] -> a
myLastAlt [] = error "The list should be nonempt!"
myLastAlt [x] = x
myLastAlt (_:xs) = myLastAlt xs