import Vapor

Route.get("/") { request in 
	return View(path: "index.html")
}

//start the server up
let server = Server()
server.run(port: 80)