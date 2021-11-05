//
//  WebServices.swift
//  RestAPIPracticesWithAlamofire
//
//  Created by Halil İbrahim Öztekin on 3.11.2021.
//

import Foundation
import Alamofire
class WebServices{
    var petitions = [Petition]()
    
    
    func getFeed(completion : @escaping (Petitions) -> ()){
        
        AF.request("https://www.hackingwithswift.com/samples/petitions-1.json", method: .get )
            .responseDecodable(of: Petitions.self) { response in
                let leti = response.value
                
                
                completion(leti!)
            }
        
    }
    
    
    
    
}
