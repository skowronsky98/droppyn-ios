//
//  SignupView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import SwiftUI

struct SignupView: View {
    
    @StateObject private var signupVM = SignupViewModel()
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    TextField("email", text: $signupVM.email)
                        
                    TextField("username", text: $signupVM.username)
                        
                    TextField("phone", text: $signupVM.phone)
                        
                    SecureField("password", text: $signupVM.password)
                        
                    SecureField("repeat password", text: $signupVM.password)
                        
                }
                
                Section{
                    HStack {
                        
                        Spacer()
                        Button("Signup") {
                            
                            
                        }
                        Spacer()
                    }
                }
                
                
                
//                Section {
//                    HStack{
//                        Spacer()
//                        Button("Signup") {
//
//
//                        }.foregroundColor(.pink)
//                        Spacer()
//                    }
//                }
                
            }.navigationTitle("Signup")
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
