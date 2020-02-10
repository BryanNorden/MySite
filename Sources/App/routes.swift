//
//  routes.swift
//  App
//
//  Created by Bryan Norden on 2/10/20.
//

import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
  let websiteController = WebsiteController()
  try router.register(collection: websiteController)
}
