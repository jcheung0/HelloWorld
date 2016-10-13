package main

import "fmt"
import "./person"

type Place interface {
	test() string
}

type House struct{}

func (h House) GetHouseName() string {
	return "hello"
}

type Rectangle struct {
	length, width int
	name          string
}

func (r Rectangle) printRect(n string) string {
	return n
}

const s string = "constatnt"

func val() (int, int) {
	return 3, 7
}

func sum(nums ...int) {

}

func intSeq() func() int {
	return func() int {
		return 1
	}
}

func zeroval(ival int) {
}

func zeroptr(iptr *int) {
	*iptr = 0
}

func fact(n int) int {
	if n == 0 {
		return 1
	}

	return n * fact(n-1)
}

func main() {
	r := Rectangle{}
	//m := person.My_struct{}

	var a string = "hello"
	//var array [5]int
	nums := []int{2, 3, 4}

	sum := 0
	for _, num := range nums {
		sum += num
	}

	s := make([]string, 3)

	//delete()
	fmt.Println("emp", 3)
	fmt.Println(r.printRect("hello rect"))
	fmt.Println(a)
	fmt.Println(s)
	i := 1
	/*for i <= 3 {
		fmt.Println(i)
	}*/
	myval := person.MyStruct{}
	switch i {
	case 1:
		fmt.Println("one")
	}
	newInts := intSeq()
	for j := 7; j <= 9; j++ {
		fmt.Println(j)
	}

	//fmt.Println("Default rectangle is", r)
	//fmt.Println("Hello world")
}
