//
//  ShoeOffer.swift
//  FitRite
//
//  Created by Oskar Skowronski on 16/04/2021.
//

import Foundation

//struct OfferList {
//    var offers: [Offer] = Array()
//
//
//}
//
//struct FavoriteOfferList {
//    var favoriteOffers: [Offer] = Array()
//
//    mutating func remove(_ offer: Offer){
//        let index = favoriteOffers.firstIndex(matching: offer)!
//        favoriteOffers.remove(at: index)
//    }
//    
//    mutating func addOffer(_ offer: Offer) {
//        favoriteOffers.append(offer)
//    }
//
//}


struct Offer: Identifiable {
    
    let id: String
    let shoe: Shoe
    var size: SizeChart
    var price: Double
    var active = true
    var deleted = false
    var bio = ""
    let user: User
}
