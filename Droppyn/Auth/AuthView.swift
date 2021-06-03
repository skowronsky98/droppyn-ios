//
//  LoginView.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import SwiftUI

struct AuthView: View {
    
    @StateObject private var profileVM = ProfileViewModel()
    
    var body: some View {
        profileVM.id.count > 0 ? AnyView(ContentView().environmentObject(profileVM)) : AnyView(SignupView().environmentObject(profileVM))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}

