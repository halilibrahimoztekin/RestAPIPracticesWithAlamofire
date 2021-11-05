//
//  Petition.swift
//  RestAPIPracticesWithAlamofire
//
//  Created by Halil İbrahim Öztekin on 3.11.2021.
//

import Foundation
struct Petition : Decodable {
    var title : String
    var body : String
    var signatureCount : Int
}
struct Petitionlar : Decodable {
    var result : [Petition]
    
    
}
