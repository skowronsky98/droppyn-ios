//
//  ShoeSearchViewModel.swift
//  FitRite
//
//  Created by Oskar Skowronski on 13/02/2021.
//

import Foundation

class ShoeSearchViewModel: ObservableObject {
    
    @Published var shoes : [Shoe]
    var brand: Brand?
    
    func changeShoe(shoe : Shoe){
        if let index = shoes.firstIndex(where: { $0.id == shoe.id }) {
            shoes[index].model = "changed"
        }
    }
    
    
        
    func deleteItem(index: Int) {
        shoes.remove(at: index)
    }
    
    init() {
        //load const data
        shoes = PreviewData.Shoes
        
    }
}
