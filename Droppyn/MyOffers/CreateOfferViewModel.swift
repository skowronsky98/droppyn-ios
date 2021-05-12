//
//  CreateOfferViewModel.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 12/05/2021.
//

import Foundation

class CreateOfferViewModel: ObservableObject {
    @Published var shoe: Shoe?
    @Published var price = 0.0
    @Published var sizeIndex = 0
    
    
    init(shoe: Shoe) {
        self.shoe = shoe
    }
    init() {}

}
