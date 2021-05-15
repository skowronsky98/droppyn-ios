//
//  UserDTO.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 15/05/2021.
//

import Foundation

struct UserDTO: Codable, Identifiable {
    let id: String
    var username: String
    let email: String
    var firstname: String
    var surname: String
    var phone: String
    var photoURL: String
    let defultSize: String
}
