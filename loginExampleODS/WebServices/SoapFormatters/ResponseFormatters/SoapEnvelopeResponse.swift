//
//  SoapEnvelopeResponse.swift
//  ODSApp
//
//  Created by Franco Marquez on 11/10/22.
//

import Foundation
import XMLMapper

class SoapEnvelopeResponse <T: XMLMappable> : XMLMappable{
    
    var nodeName: String!

    var body : T?

    required init?(map: XMLMap) {}

    func mapping(map: XMLMap) {
        body <- map["soap:Body"]
    }
    
}
