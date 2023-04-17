//
//  SoapBodyResponse.swift
//  ODSApp
//
//  Created by Franco Marquez on 11/10/22.
//

import Foundation
import XMLMapper

class SoapBodyResponseLogin: XMLMappable{
    
    var nodeName: String!

    var ulimaResponse : LoginResponse?

    required init?(map: XMLMap) {}

    func mapping(map: XMLMap) {
        ulimaResponse <- map["loginResponse"]
    }
    
}
