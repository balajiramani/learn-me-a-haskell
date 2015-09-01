mymaximum :: (Ord a) => [a] -> a
mymaximum [] = error "mymaximum of empty list"
mymaximum [x] = x
mymaximum (x:xs) =  max x (mymaximum xs)

wrongQuickSort :: (Ord a) => [a] -> [a]
wrongQuickSort [] = []
wrongQuickSort (x:xs) = 
			let lower = wrongQuickSort [a | a <- xs, a <= x]
			    higher = wrongQuickSort [a | a <- xs, a > x]
                            in lower ++ [x] ++ higher
