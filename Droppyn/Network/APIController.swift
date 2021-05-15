//
//  APIController.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 15/05/2021.
//
import Foundation
import Combine

class APIController {
    private let shoesPath = "https://droppyn.herokuapp.com/shoe/all"
    
    var shoesPublisher: AnyPublisher<[ShoeDTO],Error> {
        let url = URL(string: shoesPath)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{$0.data}
            .decode(type: [ShoeDTO].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
