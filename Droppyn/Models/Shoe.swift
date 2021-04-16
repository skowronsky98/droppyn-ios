//
//  ShoeModel.swift
//  FitRite
//
//  Created by Oskar Skowronski on 10/02/2021.
//

import Foundation

struct Shoe : Identifiable, Codable{
    var id = UUID()
    var model : String
    var brand : Brand
    var image : String
    var favorite : Bool
    
    internal init(id: UUID = UUID(), model: String, brand: Brand, image: String, favorite: Bool) {
        self.id = id
        self.model = model
        self.brand = brand
        self.image = image
        self.favorite = favorite
    }
    
}
