//
//  FavoriteViewModel.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 12/05/2021.
//

import Foundation
import Combine

class FavoriteViewModel: ObservableObject {
    @Published var favoriteOffers: [Offer] = []
    
    private var favoriteOfferSubscriber: AnyCancellable?
    
    func fetchFavoriteOffers() {
        favoriteOfferSubscriber = APIController().favoriteOffersPublisher
            .sink(receiveCompletion: {_ in }, receiveValue: { (favoriteOffersDTO) in
                self.favoriteOffers = OfferMapper.toDomain(offersDTO: favoriteOffersDTO)
            })
    }
    
    init() {
//        favoriteOffers = PreviewData.Favorite
        fetchFavoriteOffers()
    }
    
    func deleteItem(index: Int){
        favoriteOffers.remove(at: index)
    }
    
    func isOfferFavorite(offer: Offer) -> Bool {
        if favoriteOffers.firstIndex(matching: offer) != nil {
            return true
        }
        
        return false
        //TODO change
        //return favoriteOffers.contains(offer)
    }
    
    func addOfferToFavorite(offer: Offer){
        favoriteOffers.append(offer)
    }
    
    func deleteOffer(offer: Offer) {
        let index = favoriteOffers.firstIndex(matching: offer)!
        print(index)
        favoriteOffers.remove(at: index)
    }
}
