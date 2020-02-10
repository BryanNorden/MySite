//
//  configure.swift
//  App
//
//  Created by Bryan Norden on 2/10/20.
//

import Vapor
import Leaf

/// Called before your application initializes.
public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
  /// Register providers first
  try services.register(LeafProvider())

  /// Register routes to the router
  let router = EngineRouter.default()
  try routes(router)
  services.register(router, as: Router.self)

  /// Register middleware
  var middlewares = MiddlewareConfig() // Create _empty_ middleware config
  middlewares.use(FileMiddleware.self) // Serves files from `Public/` directory
  middlewares.use(ErrorMiddleware.self) // Catches errors and converts to HTTP response
  services.register(middlewares)


  let commandConfig = CommandConfig.default()
  services.register(commandConfig)

  config.prefer(LeafRenderer.self, for: ViewRenderer.self)
}
