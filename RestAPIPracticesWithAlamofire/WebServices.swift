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
    func getData (urlString : String) -> [Petition]{
        
        AF.request(urlString)
            .validate()
            .responseDecodable(of: Petitions.self) { data in
                
                self.petitions =  data.value?.result as! [Petition]
                
            }
        
        
        
        return petitions
        
        
        
    }
    
    
}
