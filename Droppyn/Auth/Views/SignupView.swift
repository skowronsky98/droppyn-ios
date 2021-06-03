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
                        TextField("email", text: $signupVM.email).autocapitalization(.none)
                            
                        TextField("username", text: $signupVM.username).autocapitalization(.none)
                        
                        TextField("firstname", text: $signupVM.firstname)
                        
                        TextField("surname", text: $signupVM.surname)
                            
                        TextField("phone", text: $signupVM.phone)
                            
                        SecureField("password", text: $signupVM.password)
                            
                        SecureField("repeat password", text: $signupVM.repeatPassword)
                            
                    }
                    
                    Section{
                        HStack {
                            
                            Spacer()
                            Button("Signup") {
                                
                                signupVM.register {
                                    if let user = Auth.auth().currentUser {
                                        profileVM.id = user.uid
                                        profileVM.postUser(email: signupVM.email, username: signupVM.username, firstname: signupVM.firstname, surname: signupVM.surname, phone: signupVM.phone)
                                    }
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
