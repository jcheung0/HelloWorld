package routers

import (
	"Users/jcheung/Dev/Projects/HelloWorld/go/tutorial/blog_tutorial_beego/blog_tutorial/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
}
