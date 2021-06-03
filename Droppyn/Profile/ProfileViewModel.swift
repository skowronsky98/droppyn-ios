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
        
        setLoginUserID()
        
    }
    
    func setLoginUserID(){
        if let user = Auth.auth().currentUser {
            self.id = user.uid
            fetchUserData(id: id)
        }
        
    }
    
    

    
    func fetchUserData(id: String) {

        if id.count > 0 {
            let path = "https://droppyn.herokuapp.com/user?id=\(id)"
            guard let url = URL(string: path) else {
                print("Invalid GET user URL")
                return
            }
            let request = URLRequest(url: url)

            URLSession.shared.dataTask(with: request) { data, response, error in
                if let data = data {
                    if let decodedResponse = try? JSONDecoder().decode(UserDTO.self, from: data) {
                        DispatchQueue.main.async {
                            self.user = UserMapper.toDomain(userDTO: decodedResponse)
                            print("User Fetched form API")
                            PreviewData.MyUser = self.user
                        }
                        return
                    }
                }
            }.resume()

        }
    }
    
    
    func postUser(email: String, username: String, firstname: String, surname: String, phone: String){
        
        let body: [String: Any] = ["id": self.id, "username": username, "firstname": firstname, "surname": surname, "email": email, "phone": phone, "photoURL": "profile"]
        
        let path = "https://droppyn.herokuapp.com/user"
        guard let url = URL(string: path) else {
            print("Invalid POST user URL")
            return
        }
        
        
        let data = try! JSONSerialization.data(withJSONObject: body)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.dataTask(with: request) {(data, res, err ) in
            do {
                if let data = data {
                    _ = try JSONDecoder().decode(UserDTO.self, from: data)
//                    print(result)
                    self.fetchUserData(id: self.id)
                }
            } catch (let error) {
                print(error)
            }
        }.resume()
        
    }
    

}
