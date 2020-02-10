//
//  WebsiteController.swift
//  App
//
//  Created by Bryan Norden on 2/10/20.
//

import Vapor
import Leaf

struct WebsiteController: RouteCollection {
  func boot(router: Router) throws {
    router.get(use: indexHandler)
  }

  func indexHandler(_ req: Request) throws -> Future<View> {
      return try req.view().render("welcome")
  }
}
