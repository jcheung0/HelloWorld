doubleMe :: Int -> Int
doubleMe x = x + x

y :: Int
y = 3

data Bool = False | True

--printStringNTimes :: Int->String

--printStringNTimes 0 m = return()
--printStringNTimes n m = 
--    do
--        putStrLn m
--        printStringNTimes (n - 1)

addThree :: Int->Int->Int->String
addThree x y z = "hello"


maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum xs

summary' :: [Int] -> Int
summary' [n] = n
summary' (n:ns) = n + summary' ns

printChar :: [Char] -> [Char]
printChar word = word

main :: IO()
main = 
    do
        print(doubleMe 2)
        print(addThree 2 2 3)
        print(summary' [4,2,3])
        print(printChar "hello")
        --printStringNTimes 10 "hello"
