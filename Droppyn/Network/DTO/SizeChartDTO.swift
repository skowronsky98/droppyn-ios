//
//  SizeChartDTO.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 15/05/2021.
//

import Foundation

struct SizeChartDTO: Codable, Identifiable {
    var id: String
    var eu: String
    var type: String
    var uk: Double
    var us: Double
    var brand: Brand
}
