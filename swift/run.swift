//print("Hello world")

func sayHello(personName: String)->String{
    let greeting = "Hello"
    return greeting
}


//print(sayHello("Johnson"));
class Shape{
    
}
//import Shape

class Square : Shape{
    
    var length: Int = 1

    init (length: Int){
        self.length = length
    }    
        
    func printLength(){
        print("size:" + String(self.length));
    }
}




func fizzbuzz (n: Int) -> String{
    
    if(n % 3 == 0 && n % 5 == 0){
        return "fizzbuzz"
    }else if(n % 3 == 0){
        return "fizz"
    }else if(n % 5 == 0){
        return "buzz"
    }
    
    return ""
}

print(fizzbuzz(5))
//import Square
import Foundation

var s = Square(length: 3)
s.printLength()
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
