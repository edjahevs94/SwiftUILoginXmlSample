//
//  SoapRequest.swift
//  SoapServiceConsumeExample
//
//  Created by EdgardVS on 5/10/22.
//

import Foundation
import Alamofire
import XMLMapper

struct ServiceLogin {
    
    static let shared = ServiceLogin()
    
    func consultLogin(userCode: String, password: String, completion: @escaping (AFDataResponse<SoapEnvelopeResponse<SoapBodyResponseLogin>>) -> ()) {
        
        let soapMessage = LoginServiceMessage(soapAction: "ulim:login")
        soapMessage.userCode = userCode
        soapMessage.password = password
        let soapEnvelope = SoapEnvelope(soapMessage: soapMessage, envelopeParameter_1: "http://ulima.edu.pe", envelopeParameter_2: "http://www.w3.org/2003/05/soap-envelope")
        
        print(soapEnvelope.toXMLString() ?? "no data")
        
        AF.request("https://webaloe24.ulima.edu.pe/SolucionesUlimaWS.asmx", method: .post, parameters: soapEnvelope.toXML(), encoding: XMLEncoding.default).responseXMLObject { (response: AFDataResponse<SoapEnvelopeResponse<SoapBodyResponseLogin>>) in
            print(response)
            completion(response)
        }
    }
}



