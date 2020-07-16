import Vapor

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)

let app = Application(env)
defer { app.shutdown() }

app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

app.get { req in 
    req.view.render("index.html")
}

app.get("heartbeat") { req  in
    ["lub": "dub"]
}

try app.run()
