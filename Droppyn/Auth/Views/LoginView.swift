//
//  LognView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    TextField("email", text: $loginVM.email)
                        
                    SecureField("password", text: $loginVM.password)
                        
                }
                
                Section{
                    HStack {
                        
                        Spacer()
                        Button("Login") {
                            
                            
                        }
                        Spacer()
                    }
                }
                
                
            }.navigationTitle("Login    ")
        }
    }
}

struct LognView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
