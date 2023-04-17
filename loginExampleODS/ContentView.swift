//
//  ContentView.swift
//  loginExampleODS
//
//  Created by EdgardVS on 17/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm: LoginViewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: vm.user.image)) { image in
                image.resizable()
                    .frame(width: 130, height: 150)
            
            } placeholder: {
                ProgressView()
            }

            Text("Hello, \(vm.userName)")
            Text(vm.user.codigo)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
