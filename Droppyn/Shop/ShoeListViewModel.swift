//
//  ShoeSearchViewModel.swift
//  FitRite
//
//  Created by Oskar Skowronski on 13/02/2021.
//

import Foundation
import Combine

class ShoeListViewModel: ObservableObject {
    
    @Published var shoes : [Shoe] = []
    //var brand: Brand?
    
    private var shoeSubscriber: AnyCancellable?
    
    
    
    func fetchShoes() {
        shoeSubscriber = APIController().shoesPublisher
            .sink(receiveCompletion: {_ in }, receiveValue: { (shoesDTO) in
                self.shoes = ShoeMapper.toDomain(shoesDTO: shoesDTO)
                print("Shoes fetched from API")
            })
    }
    
    
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
//        shoes = PreviewData.Shoes
        fetchShoes()
    }
}
