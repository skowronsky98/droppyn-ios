//
//  ShoeDTO.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 15/05/2021.
//

import Foundation

struct ShoeDTO: Codable, Identifiable  {
    var id: String
    var model : String
    var brand : BrandDTO
    var media : Media
}
class ShoeMapper{
    static func toDomain(shoesDTO: [ShoeDTO]) -> [Shoe]{
        var shoes:[Shoe] = []
        for item in shoesDTO {
            shoes.append(Shoe(id: item.id,
                              model: item.model,
                              brand: BrandMapper.toDomain(brandDTO: item.brand),
                              media: item.media))
        }
        
        return shoes
    }
}
