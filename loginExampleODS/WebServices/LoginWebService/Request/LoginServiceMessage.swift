//
//  LoginServiceMessage.swift
//  ODSApp
//
//  Created by Franco Marquez on 11/10/22.
//

import Foundation
import Alamofire
import XMLMapper
import UIKit

class LoginServiceMessage: SoapMessage {

    var userCode: String?
    var password : String?
    var SO : String? = "iOS"
    var SOVersion : String? = "\(UIDevice.current.systemVersion)"
    var deviceID : String? = "?"
    var ipAdress : String? = "?"

    override func mapping(map: XMLMap) {
        super.mapping(map: map)

        userCode <- map["ulim:prm_sUser"]
        password <- map["ulim:prm_sPassword"]
        SO <- map["ulim:prm_sSO"]
        SOVersion <- map["ulim:prm_sSOVersion"]
        deviceID <- map["ulim:prm_sIdDevice"]
        ipAdress <- map["ulim:prm_sIpAdress"]
    }
}
