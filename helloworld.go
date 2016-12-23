package main

import "github.com/kataras/iris"

func main(){

	// http://localhost:5700/api/user/42
	// Method: "GET"
	iris.Get("/", func(ctx *iris.Context){
		ctx.Text(iris.StatusOK, "Hello World!")
	})

	iris.Listen("0.0.0.0:7777")
}
