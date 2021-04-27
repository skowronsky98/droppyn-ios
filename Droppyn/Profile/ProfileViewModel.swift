//
//  UserProfile.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 27/04/2021.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var user: User
    
    init() {
        user = PreviewData.MyUser
    }
}
