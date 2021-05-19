//
//  OfferDTO.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 15/05/2021.
//

import Foundation

struct OfferDTO: Identifiable, Codable {
    internal init(id: String? = nil, shoe: ShoeDTO, size: SizeChartDTO, price: Double, active: Bool, deleted: Bool, bio: String, user: UserDTO) {
        self.id = id
        self.shoe = shoe
        self.size = size
        self.price = price
        self.active = active
        self.deleted = deleted
        self.bio = bio
        self.user = user
    }
    
    var id: String?
    var shoe: ShoeDTO
    var size: SizeChartDTO
    var price: Double
    var active: Bool
    var deleted: Bool
    var bio: String
    let user: UserDTO
}

class OfferMapper{
    static func toDomain(offersDTO: [OfferDTO]) -> [Offer]{
        var offers:[Offer] = []
        for item in offersDTO {
            offers.append(Offer(id: item.id!, shoe: ShoeMapper.toDomain(shoeDTO: item.shoe), size: SizeChartMapper.toDomain(sizeChartDTO: item.size), price: item.price, active: item.active, deleted: item.deleted, bio: item.bio, user: UserMapper.toDomain(userDTO: item.user)))
        }
        
        return offers
    }
    
//    static func toDTO(offer: Offer) -> OfferDTO {
//        return OfferDTO(shoe: offer.shoe, size: offer.size, price: offer.price, active: offer.active, deleted: offer.deleted, bio: offer.bio, user: offer.user)
//    }
}
