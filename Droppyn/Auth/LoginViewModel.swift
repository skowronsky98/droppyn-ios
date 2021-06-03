//
//  LoginViewModel.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import Foundation
import Firebase

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    
    
    func login(completion: @escaping () -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                completion()
                
            }
            
        }
    }
    
}
