//
//  LoginView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import SwiftUI

struct AuthView: View {
    
    @StateObject var authViewModel = AuthViewModel()
    
    var body: some View {
        authViewModel.logedin ? AnyView(ContentView()) : AnyView(SignupView())
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}

