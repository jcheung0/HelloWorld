factorial :: Int -> Int
factorial 0 = 1
factorial n = if n < 2 then 1 else n * factorial( n - 1) 




hello_worlds n = putStrLn $ unlines (replicate n "Hello World")


main :: IO()
main = do 
    hello_worlds 20
    factorial 20
