//
//  ShoeOffer.swift
//  FitRite
//
//  Created by Oskar Skowronski on 16/04/2021.
//

import Foundation

struct MyOffer: Identifiable {
    let id: UUID
    let shoe: Shoe
    var size: SizeChart
    var price: Double
    var active = true
    var bio = ""
}
