//
//  Usuario.swift
//  ODSApp
//
//  Created by Franco Marquez on 11/10/22.
//

import Foundation
import XMLMapper

class SoapUsuario : XMLMappable {
    var nodeName: String!
    
    var codEstadoRespuesta: String?
    var nombreCompleto : String?
    var msgRspta : String?
    var numeroSesion : Int?
    var token : String?
    var codigo : String?
    var nombre : String?
    var apellido: String?
    var codigoEspecialidad: Int?
    var nombreEspecialidad: String?
    var fotoUrl : String?
    
    required init?(map: XMLMap) {}
    
    func mapping(map: XMLMap) {
        codEstadoRespuesta <- map["nCoEstd"]
        nombreCompleto <- map["sNoCmpPers"]
        numeroSesion <- map["nNuTknSesn"]
        nombre <- map["sNoNomPers"]
        apellido <- map["sNoPatPers"]
        codigoEspecialidad <- map["nCoEspc"]
        nombreEspecialidad <- map["sNoEspc"]
        msgRspta <- map["sTxMsgRpta"]
        token <- map["sTxTknSesn"]
        codigo <- map["sCoUser"]
        fotoUrl <- map["sUrlFoto"]
    }
}
