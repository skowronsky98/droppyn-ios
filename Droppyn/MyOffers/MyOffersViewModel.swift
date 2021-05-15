//
//  ShoeVM.swift
//  FitRite
//
//  Created by Oskar Skowronski on 11/02/2021.
//

import Foundation
import Combine

class MyOffersViewModel: ObservableObject {
    @Published var myOffers: [Offer] = []
    private var user: User
    
//    func changeShoe(shoe : Shoe){
//        if let index = shoesCollection.firstIndex(where: { $0.id == shoe.id }) {
//            shoesCollection[index].model = "changed"
//        }
//    }
    
    private var myOfferSubscriber: AnyCancellable?
    
    
    
    func fetchMyOffers() {
        myOfferSubscriber = APIController().myOffersPublisher
            .sink(receiveCompletion: {_ in }, receiveValue: { (myOffersDTO) in
                self.myOffers = OfferMapper.toDomain(offersDTO: myOffersDTO)
            })
    }
    
    
    init() {
        //load const data
//        myOffers = PreviewData.MyOffers
        user = PreviewData.MyUser
        fetchMyOffers()
    
    }

    func deleteItem(index: Int) {
        myOffers.remove(at: index)
    }
    
    func addOffer(shoe: Shoe, size: SizeChart, price: Double){
        myOffers.append(Offer(id: UUID().uuidString, shoe: shoe, size: size, price: price, user: user))
        
    }
    


}
