//
//  OffersViewModel.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 08/05/2021.
//

import Foundation
import Combine

class OffersViewModel: ObservableObject {
    @Published var offers: [Offer] = []
    var shoe: Shoe
    
    private var offerSubscriber: AnyCancellable?
    
    
    func fetchOffers() {
        offerSubscriber = APIController().offersPublisher
            .sink(receiveCompletion: {_ in }, receiveValue: { (offersDTO) in
                self.offers = OfferMapper.toDomain(offersDTO: offersDTO).filter{ $0.shoe.id == self.shoe.id }
            })
    }
    
    init(shoe: Shoe) {
        self.shoe = shoe
        fetchOffers()
    }
    

}
