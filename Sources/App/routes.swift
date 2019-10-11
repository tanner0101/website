import Vapor

func routes(_ r: Routes, _ c: Container) throws {
    let view = try c.make(ViewRenderer.self)
    r.get { req in
        return view.render("index.html")
    }
}
