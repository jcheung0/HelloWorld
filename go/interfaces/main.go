package main

import "fmt"

type animal interface {
	canEat(foodType string) bool
}

func (a animal) canEat(foodType string) bool {
	if foodType == "oreo" {
		return false
	} else {
		return true
	}
}

type wolf interface {
	howl() string
}

type human interface {
	speak() string
}

type werewolf struct {
}

func (w werewolf) howl() string {
	fmt.Println("howl!!!!")
	return "howl"
}

func (w werewolf) speak() string {
	return "I am mine"
}

type duck struct {
	animal
	featherCount int
}

func main() {
	myDuck = duck()
	were = werewolf()
}
