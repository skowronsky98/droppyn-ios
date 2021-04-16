//
//  ShoeVM.swift
//  FitRite
//
//  Created by Oskar Skowronski on 11/02/2021.
//

import Foundation

class MyOffersViewModel: ObservableObject {
    @Published var myOffers: [MyOffer]
    
//    func changeShoe(shoe : Shoe){
//        if let index = shoesCollection.firstIndex(where: { $0.id == shoe.id }) {
//            shoesCollection[index].model = "changed"
//        }
//    }
        
    func deleteItem(index: Int) {
        myOffers.remove(at: index)
    }
    
    func addShoe(){}
    
    init() {
        //load const data
        myOffers = PreviewData.MyOffers
       
    }
    
}
