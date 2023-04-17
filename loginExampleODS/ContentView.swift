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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, \(vm.userName)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
