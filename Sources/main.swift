import Vapor

let app = Application()

app.get("/") { request in 
	return try View(path: "index.html")
}

app.get("heartbeat") { request in 
	return ["lub": "dub"]
}

app.start(port: 80)