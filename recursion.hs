mymaximum :: (Ord a) => [a] -> a
mymaximum [] = error "mymaximum of empty list"
mymaximum [x] = x
mymaximum (x:xs) =  max x (mymaximum xs)
