//
//  UserDTO.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 15/05/2021.
//

import Foundation

struct UserDTO: Codable, Identifiable {
    var id: String
    var username: String
    var email: String
    var firstname: String
    var surname: String
    var phone: String
    var photoURL: String
    //var defultSize: SizeChartDTO
}

class UserMapper {
    static func toDomain(userDTO: UserDTO) -> User{
        return User(id: userDTO.id, username: userDTO.username, email: userDTO.email, firstname: userDTO.firstname, surname: userDTO.surname, phone: userDTO.phone, photoURL: userDTO.photoURL, defultSize: PreviewData.SizeCharts[0])
    }
    
    static func toDTO(user: User) -> UserDTO {
        return UserDTO(id: user.id, username: user.username, email: user.email, firstname: user.firstname, surname: user.surname, phone: user.phone, photoURL: user.photoURL)
    }
}
