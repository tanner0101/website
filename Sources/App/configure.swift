import Vapor

// Called before your application initializes.
func configure(_ s: inout Services) {
    // Register routes
    s.extend(Routes.self) { r, c in
        try routes(r, c)
    }

    s.register(NIOThreadPool.self) { c in
        return c.application.threadPool
    }

    // Register middleware
    s.extend(MiddlewareConfiguration.self) { config, c in
        // Serves files from `Public/` directory
        try config.use(c.make(FileMiddleware.self))
    }
}
