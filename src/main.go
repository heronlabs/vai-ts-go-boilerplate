package main

import (
	"fmt"
	"go-boilerplate/src/application"
)

func main() {
	var message = application.HelloWorld("My Project")

	fmt.Println(message)
}
