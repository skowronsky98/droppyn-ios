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
    
    
    private let sizesPath = "https://droppyn.herokuapp.com/sizechart?brandId=6054bd791f943b17604b19a0"
    var sizeChartPublisher: AnyPublisher<[SizeChartDTO],Error> {
        let url = URL(string: sizesPath)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{$0.data}
            .decode(type: [SizeChartDTO].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    
    private let myOffersPath = "https://droppyn.herokuapp.com/offer/myoffer/all?userId=609ed22c98cb1221fdbecea7"
    var myOffersPublisher: AnyPublisher<[OfferDTO],Error> {
        let url = URL(string: myOffersPath)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{$0.data}
            .decode(type: [OfferDTO].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
   

    
    
    
    private let favoriteOffersPath = "https://droppyn.herokuapp.com//offer/favoriteoffer/all?userId=609ed22c98cb1221fdbecea7"
    var favoriteOffersPublisher: AnyPublisher<[OfferDTO],Error> {
        let url = URL(string: favoriteOffersPath)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{$0.data}
            .decode(type: [OfferDTO].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    
    private let offersPath = "https://droppyn.herokuapp.com/offer/all"
    var offersPublisher: AnyPublisher<[OfferDTO],Error> {
        let url = URL(string: offersPath)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{$0.data}
            .decode(type: [OfferDTO].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    private let userPath = "https://droppyn.herokuapp.com/user?id=609ed22c98cb1221fdbecea7"
    var userPublisher: AnyPublisher<UserDTO,Error> {
        let url = URL(string: userPath)!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map{$0.data}
            .decode(type: UserDTO.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    
    
    
}
