//
//  LoginView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import SwiftUI
import Firebase

struct AuthView: View {
    
    @StateObject private var profileVM = ProfileViewModel()
    
    var body: some View {
        Auth.auth().currentUser != nil ? AnyView(ContentView().environmentObject(profileVM)) : AnyView(SignupView().environmentObject(profileVM))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}

