//
//  UserProfile.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 27/04/2021.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var user: User

    private var userSubscriber: AnyCancellable?
    
    func fetchUserData() {
        userSubscriber = APIController().userPublisher
            .sink(receiveCompletion: {_ in }, receiveValue: { (userDTO) in
                self.user = UserMapper.toDomain(userDTO: userDTO)
            })
    }
    
    init() {
        user = PreviewData.MyUser
        fetchUserData()
    }
}
