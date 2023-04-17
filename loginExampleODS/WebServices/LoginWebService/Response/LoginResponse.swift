//
//  LoginResponse.swift
//  ODSApp
//
//  Created by Franco Marquez on 11/10/22.
//

import Foundation
import XMLMapper

class LoginResponse: XMLMappable {
    var nodeName: String!

    var usuario : SoapUsuario?

    required init?(map: XMLMap) {}

    func mapping(map: XMLMap) {
        usuario <- map["loginResult"]
    }
}
