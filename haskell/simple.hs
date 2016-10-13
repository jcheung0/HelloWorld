import System.Info
import Data.List
doubleMe x = x + x
--doubleUs x y = x*2 + x*y 

doubleUs x y = doubleMe x + doubleMe y 

permutation :: Eq a => [a] -> [[a]]
permutation [] = [[]]
permutation xs = [x:ys | x <- xs, ys <- permutation(delete x xs)]

printNtimes :: Int -> [String]
printNtimes n = replicate n "my world" 
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

lucky :: (Integral a) => a -> String  
lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky x = "Sorry, you're out of luck, pal!"   

sayMe :: (Integral a) => a -> String  
sayMe 1 = "One!"  
sayMe 2 = "Two!"  
sayMe 3 = "Three!"  
sayMe 4 = "Four!"  
sayMe 5 = "Five!"  
sayMe x = "Not between 1 and 5"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors a b = (fst a + fst b, snd a + snd b)

sum' :: (Num a) => [a] -> a
sum' [] = 0  
sum' (x:xs) = x + sum' xs

capital :: String -> String  
capital "" = "Empty string, whoops!"  
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]  

increasing :: (Ord a) => [a] -> Bool
increasing xs = if  xs == []
					then True
					else if tail xs == []
						then True
						else if head xs <= head(tail xs)
							then increasing(tail xs)
							else False


quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort(x:xs) = quicksort [a | a <- xs, a < x]
                  ++ [x] ++ 
                  quicksort [a | a <- xs, a >= x]

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length'(xs)

bmiTell :: (RealFloat a) => a -> a -> String

--example of a guard function  
bmiTell weight height
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!" 
    where bmi = weight /height ^ 2
          (skinny, normal, fat) = (18.5, 25.0, 30.0) 

initials :: String -> String -> String  
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."  
    where (f:_) = firstname  
          (l:_) = lastname  

--bmiTell :: (RealFloat a) => a -> a -> String  
--bmiTell weight height  
--    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"  
--    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
--    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"  
--    | otherwise                 = "You're a whale, congratulations!

max' :: (Ord a) => a -> a -> a  
max' a b | a > b     = a  | otherwise = b  

e :: Double -> [Double]
e x = [x**y/product[1..y] | y <- [0..]]
solve :: Double -> Double
solve x = sum $ take 10 (e x)

myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT  

main :: IO()
main = do
    print os 
    print arch 
    print compilerName 
    print compilerVersion
    print (permutation "hello")
    print (factorial 4)
    print (printNtimes 5)
    print (quicksort ([2,9,3,1,5,4,19]))
    print (length' [1,2,3,4,5,5,6])