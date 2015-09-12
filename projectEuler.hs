one = sum [x| x <- [1..999], (mod x 3) ==0 || (mod x 5) == 0]

two = sum [x| x <- takeWhile (<= 4000000) fibs, even x]
  where
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
