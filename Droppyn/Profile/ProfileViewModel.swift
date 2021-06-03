//
//  UserProfile.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 27/04/2021.
//

import Foundation
import Firebase

class ProfileViewModel: ObservableObject {
    @Published var user: User
    @Published var id: String = ""

    init() {
        user = PreviewData.MyUser
        
        setIdUser()
        
        
//        fetchUserData()
    }
    
    func setIdUser(){
        let currentUser = Auth.auth().currentUser
        currentUser?.getIDTokenForcingRefresh(true) { idToken, error in
          if let error = error {
            print(error.localizedDescription)
            return;
          }
            
            //TODO post data to backend
            self.id = idToken ?? ""
        }
    }
    
//    private let userPath = "https://droppyn.herokuapp.com/user?id=609ed22c98cb1221fdbecea7"
//    var userPublisher: AnyPublisher<UserDTO,Error> {
//        let url = URL(string: userPath)!
//        return URLSession.shared.dataTaskPublisher(for: url)
//            .map{$0.data}
//            .decode(type: UserDTO.self, decoder: JSONDecoder())
//            .receive(on: RunLoop.main)
//            .eraseToAnyPublisher()
//    }
    
//    func fetchUserData() {
//
//        if let id = id {
//            let path = "https://droppyn.herokuapp.com/user?id=\(id)"
//            guard let url = URL(string: path) else {
//                print("Invalid GET user URL")
//                return
//            }
//            let request = URLRequest(url: url)
//
//            URLSession.shared.dataTask(with: request) { data, response, error in
//                if let data = data {
//                    if let decodedResponse = try? JSONDecoder().decode(UserDTO.self, from: data) {
//                        DispatchQueue.main.async {
//                            self.user = UserMapper.toDomain(userDTO: decodedResponse)
//                            print("User Fetched form API")
//                        }
//                        return
//                    }
//                }
//            }.resume()
//
//        }
//
//
//
//    }
}
