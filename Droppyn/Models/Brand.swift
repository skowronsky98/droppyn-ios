//
//  Brand.swift
//  FitRite
//
//  Created by Oskar Skowronski on 13/02/2021.
//

import Foundation

struct Brand :Identifiable, Codable, Hashable{
    var id = UUID()
    var name : String
    var image : String
    
    init(id: UUID = UUID(), name: String, image: String) {
        self.id = id
        self.name = name
        self.image = image
    }
    
}
