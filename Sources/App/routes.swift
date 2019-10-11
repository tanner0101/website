import Vapor

func routes(_ r: Routes, _ c: Container) throws {
    let main = try MainController(view: c.make())
    r.get(use: main.index)
    r.get("heartbeat", use: main.heartbeat)
}
