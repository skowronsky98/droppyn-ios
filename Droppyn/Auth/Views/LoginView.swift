//
//  LognView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject private var profileVM: ProfileViewModel
    
    var body: some View {
        
            VStack {
                Form {
                    
                    Section {
                        TextField("email", text: $loginVM.email).autocapitalization(.none)
                            
                        SecureField("password", text: $loginVM.password)
                            
                    }
                    
                    Section{
                        HStack {
                            
                            Spacer()
                            Button("Login") {
                                loginVM.login {
                                    profileVM.setLoginUserID()
                                }
                                
                            }
                            Spacer()
                        }
                    }
                    
                    
                }
                
                Spacer()
                HStack {
                    Spacer()
                        
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Create account").padding()
                    })
                        
                    
                    
                    
                }
            }.navigationTitle("Login")
        
    }
}

struct LognView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
