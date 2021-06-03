//
//  SignupViewModel.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import Foundation
import Firebase

class SignupViewModel: ObservableObject {
    
    @Published public var email: String = ""
    @Published public var username: String = ""
    @Published public var firstname: String = ""
    @Published public var surname: String = ""
    @Published public var phone: String = ""
    @Published public var password: String = ""
    @Published public var repeatPassword: String = ""
    

    
    func register(completion: @escaping () -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                completion()
                
            }
            
        }
    }
    
}
