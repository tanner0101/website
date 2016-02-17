import Vapor

Route.get("/") { request in 
	return try View(path: "index.html")
}

Route.get("heartbeat") { request in 
	return ["lub": "dub"]
}

//start the server up
let server = Server()
server.run(port: 80)