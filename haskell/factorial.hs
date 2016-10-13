
factorial 0  = 1
factorial n = n * factorial(n - 1)

factorial2 n = if n < 2 then 1 else n * factorial2(n - 1)
main = print(factorial2 5 )
