//
//  ShoeModel.swift
//  FitRite
//
//  Created by Oskar Skowronski on 10/02/2021.
//

import Foundation

struct Shoe : Identifiable, Codable{
    var id: String
    var model : String
    var brand : Brand
    var media : Media
    
    
    internal init(id: ID = UUID().uuidString, model: String, brand: Brand, media: Media) {
        self.id = id
        self.model = model
        self.brand = brand
        self.media = media
    }
    
}
