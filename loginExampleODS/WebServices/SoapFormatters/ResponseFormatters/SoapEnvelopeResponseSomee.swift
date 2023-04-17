//
//  SoapEnvelopeResponseTriviaRequest.swift
//  ODSApp
//
//  Created by Franco Marquez on 13/10/22.
//

import Foundation
import XMLMapper

class SoapEnvelopeResponseSomee <T: XMLMappable> : XMLMappable{
    
    var nodeName: String!

    var body : T?

    required init?(map: XMLMap) {}

    func mapping(map: XMLMap) {
        body <- map["s:Body"]
    }
    
}
