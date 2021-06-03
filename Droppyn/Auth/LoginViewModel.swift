//
//  LoginViewModel.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 01/06/2021.
//

import Foundation
class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
}
