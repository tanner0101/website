import Vapor

struct MainController {
    let view: ViewRenderer

    init(view: ViewRenderer) {
        self.view = view
    }

    func index(_ req: Request) -> EventLoopFuture<View> {
        return self.view.render("index.html")
    }

    func heartbeat(_ req: Request) -> [String: String] {
        return ["lub": "dub"]
    }
}
