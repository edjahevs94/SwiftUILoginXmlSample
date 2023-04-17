//
//  LoginViewModel.swift
//  loginExampleODS
//
//  Created by EdgardVS on 17/04/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var userName: String = " "
    
    init() {
        self.getCredentials()
    }
    
    
    func getCredentials() {
        
        ServiceLogin.shared.consultLogin(userCode: "20191063", password: "J1k3ab2A6u") { response in
            
            switch response.result {
            case .success(let data):
                print(data.body?.ulimaResponse?.usuario?.nombre ?? "no data")
                self.userName = data.body?.ulimaResponse?.usuario?.nombre ?? "no name"
            case .failure(let error):
                
                print(error.localizedDescription)
            }
        }
        
    }
    
    
}
