package main

import (
	"fmt"

	"github.com/aakarim/monorepo-example/go/pkg/cfg"
)

func main() {
	fmt.Println("I can think")
	config := cfg.ReadConfig()
	fmt.Println(config)
}
