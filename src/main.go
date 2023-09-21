package main

import (
	"fmt"
	"hello-world/src/application"
)

func main() {
	var message = application.HelloWorld("My Project")

	fmt.Println(message)
}
