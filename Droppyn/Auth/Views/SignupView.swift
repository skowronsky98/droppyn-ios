//
//  SignupView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import SwiftUI
import Firebase


struct SignupView: View {
    
    @EnvironmentObject private var profileVM: ProfileViewModel
    
    @StateObject private var signupVM = SignupViewModel()
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    
                    Section {
                        TextField("email", text: $signupVM.email)
                            
                        TextField("username", text: $signupVM.username)
                            
                        TextField("phone", text: $signupVM.phone)
                            
                        SecureField("password", text: $signupVM.password)
                            
                        SecureField("repeat password", text: $signupVM.repeatPassword)
                            
                    }
                    
                    Section{
                        HStack {
                            
                            Spacer()
                            Button("Signup") {
                                
                                signupVM.register {
                                    profileVM.setIdUser()
                                }
                            }
                            Spacer()
                        }
                    }
                }
                
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: LoginView()){
                        Text("Already have an account?").padding()
                    }
                    
                    
                }
                
            }.navigationTitle("Sign up")
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
