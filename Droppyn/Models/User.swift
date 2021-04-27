//
//  User.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 27/04/2021.
//

import Foundation

struct User {
    internal init(id: UUID = UUID(), username: String, email: String, firstname: String, surname: String, phone: String, photoURL: String, defultSize: SizeChart) {
        self.id = id
        self.username = username
        self.email = email
        self.firstname = firstname
        self.surname = surname
        self.phone = phone
        self.photoURL = photoURL
        self.defultSize = defultSize
    }
    
    let id: UUID
    var username: String
    let email: String
    let firstname: String
    let surname: String
    let phone: String
    let photoURL: String
    let defultSize: SizeChart
    
    

}

