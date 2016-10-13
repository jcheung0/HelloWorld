package demo


class Greeter(val name: String){
    fun greet(){
        println("hello world")    
    }
}

fun sum(nums: Array<Int>): Int{
	var total = 0
	for(num in nums){
		total = total + num
	}

	return total
}

fun main(args: Array<String>){
    println( "Hello, world!")
    println(intArrayOf(1,2,3,4))
}
