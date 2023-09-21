package main

import (
	"go-boilerplate/src/application"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestHelloWorld(t *testing.T) {
	var message = application.HelloWorld("My Project")

	assert.Equal(t, "Hello World My Project", message)
}
