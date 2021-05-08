//
//  OffersViewModel.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 08/05/2021.
//

import Foundation

class OffersViewModel: ObservableObject {
    @Published var offers: [Offer]
    var shoe: Shoe
    
    
    init(shoe: Shoe) {
        self.shoe = shoe
        offers = PreviewData.Offers.filter{ $0.shoe.id == shoe.id }
    }
    

}
