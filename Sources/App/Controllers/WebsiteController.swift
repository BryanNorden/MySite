import Vapor
import Leaf

struct WebsiteController: RouteCollection {
    
    func boot(router: Router) throws {
        router.get(use: indexHandler)
    }
    
    func indexHandler(_ req: Request) throws -> Future<View> {
        
        return try req.view().render("welcome")
//        return Acronym.query(on: req)
//            .all()
//            .flatMap(to: View.self) { acronyms in
//                let acronymsData = acronyms.isEmpty ? nil : acronyms
//                let context = IndexContext(title: "Homepage",
//                                           acronyms: acronymsData)
//                return try req.view().render("index", context)
//
//                return try req.view().render("index", context)
//        }
    }
}

//struct IndexContext: Encodable {
//    let title: String
//    let acronyms: [Acronym]?
//}
//
//struct AcronymContext: Encodable {
//    let title: String
//    let acronym: Acronym
//    let user: User
//}


//struct WebsiteController: RouteCollection {
//
//    func boot(router: Router) throws {
//        router.get(use: indexHandler)
//    }
//
//
//    func indexHandler(_ req: Request) throws -> Future<View> {
//        return try req.view().render("welcome")
//    }
//
//}


