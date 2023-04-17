//
//  SoapEnvelopeTriviaRequest.swift
//  ODSApp
//
//  Created by Franco Marquez on 13/10/22.
//

import Foundation
import XMLMapper

class SoapEnvelopeRequestSomee: XMLMappable {
    public var nodeName: String! = "soapenv:Envelope"
    
    var soapEncodingStyle: String = "http://schemas.xmlsoap.org/soap/encoding/"
    var xmlnsSOAP: String = "http://schemas.xmlsoap.org/soap/envelope/"
    var soapBody: SOAPBody!
    var soapHeader: SOAPHeader?
    
    var nodesOrder: [String] = [
        "soapenv:Header",
        "soapenv:Body",
    ]
    
    public init(soapMessage: SoapMessage, soapInformation: SOAPInformation? = nil, envelopeParameter_1: String, envelopeParameter_2: String) {
        xmlnsSOAP = envelopeParameter_1
        soapEncodingStyle = envelopeParameter_2
        self.soapBody = SOAPBody(soapMessage: soapMessage)
        if let soapInformation = soapInformation {
            self.soapHeader = SOAPHeader(soapInformation: soapInformation)
        }
    }
    
    required public init?(map: XMLMap) {}
    
    public func mapping(map: XMLMap) {
        
        soapEncodingStyle <- map.attributes["xmlns:soapenv"]
        xmlnsSOAP <- map.attributes["xmlns:tem"]
        soapHeader <- map["soapenv:Header"]
        soapBody <- map["soapenv:Body"]
        nodesOrder <- map.nodesOrder
    }
}
