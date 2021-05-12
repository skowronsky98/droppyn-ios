//
//  FavoriteViewModel.swift
//  Droppyn
//
//  Created by Oskar Skowronski on 12/05/2021.
//

import Foundation

class FavoriteViewModel: ObservableObject {
    @Published var favoriteOffers: [Offer]
    
    init() {
        favoriteOffers = PreviewData.Favorite
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
