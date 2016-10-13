import 'dart:math' show Random;


int fib(int n) => (n > 2) ? (fib(n-1) + fib(n-1)) : 1;

void main(){
    print("fib(20) = ${fib(20)}");

}
