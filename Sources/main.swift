import Vapor

let drop = Droplet()

drop.get("/") { request in
	return try drop.view.make("index.html")
}

drop.get("heartbeat") { request in
    return try JSON(node: ["lub": "dub"])
}

drop.serve()
