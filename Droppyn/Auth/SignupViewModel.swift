//
//  SignupViewModel.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import Foundation
class SignupViewModel: ObservableObject {
    @Published public var email: String = ""
    @Published public var username: String = ""
    @Published public var phone: String = ""
    @Published public var password: String = ""
    @Published public var repeatPassword: String = ""
    
    
}
