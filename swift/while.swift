let numbers = [2,8,1,16,4,3,9]
var sum = 0
var counter = 0

// Enter your code below
while counter < numbers.count {
    var val = numbers[counter]
    sum = sum + val
    ++counter
}

print(sum)
