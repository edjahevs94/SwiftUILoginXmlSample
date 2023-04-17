//
//  LoginViewModel.swift
//  loginExampleODS
//
//  Created by EdgardVS on 17/04/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var userName: String = " "
    @Published var user: User = User(nombre: " ", codigo: " ", image: "https://picsum.photos/200/300")
    
    init() {
        self.getCredentials()
    }
    
    
    func getCredentials() {
        
        ServiceLogin.shared.consultLogin(userCode: "20191063", password: "J1k3ab2A6u") { response in
            
            switch response.result {
            case .success(let data):
                //print(data.body?.ulimaResponse?.usuario?.nombre ?? "no data")
                guard let soapUser = data.body?.ulimaResponse?.usuario else {
                    print("ocurrio un problema")
                    return
                }
                self.userName = soapUser.nombre ?? " "
                self.user = User(nombre: soapUser.nombre ?? " ", codigo: soapUser.codigo ?? " ", image: soapUser.fotoUrl ?? " ")
            case .failure(let error):
                
                print(error.localizedDescription)
            }
        }
        
    }
    
    
}
