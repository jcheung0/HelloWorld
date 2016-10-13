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


