//
//  Brand.swift
//  FitRite
//
//  Created by Oskar Skowronski on 13/02/2021.
//

import Foundation

struct Brand :Identifiable, Codable, Hashable{
    var id: String
    var name : String
    var media : Media
    
    init(id: String, name: String, media: Media) {
        self.id = id
        self.name = name
        self.media = media
    }
    
}
