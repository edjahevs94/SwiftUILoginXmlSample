//
//  SoapMessage.swift
//  PruebaLogin
//
//  Created by Franco Marquez on 7/10/22.
//

import Foundation
import XMLMapper

class SoapMessage: XMLMappable {
    public var nodeName: String!
    
    private var xmlnsMessage: String?
    var soapAction: String?
    
    public init(soapAction: String) {
        self.soapAction = soapAction
    }
    
    required public init?(map: XMLMap) {}
    
    open func mapping(map: XMLMap) {
        xmlnsMessage <- map.attributes["xmlns:"]
    }
}
