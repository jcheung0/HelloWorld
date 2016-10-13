

seriesUp :: Int -> [Int]

seriesUp n = seriesUp' 0 n
seriesUp' :: Int -> Int -> [Int]
seriesUp' i n | i > n = []
			| otherwise = [1..i] ++ seriesUp' (i + 1) n

f :: Int -> Int -> Int
f x y = x*x + y*y 

main = do 
	print "What is your name?"
	name <- getLine
	print ("Hello " ++ name ++ "!") 
	print (f 2.3 4.2)