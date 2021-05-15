//
//  BrandDTO.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 15/05/2021.
//

import Foundation

struct BrandDTO: Codable, Identifiable{
    let id: String
    let name: String
    let media: Media
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case media
    }
}

class BrandMapper{
    static func toDomain(brandDTO: BrandDTO) -> Brand{
        return Brand(id: brandDTO.id, name: brandDTO.name, media: brandDTO.media)
    }
}

