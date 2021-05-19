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
    
    func postMyOffer(offer: Offer){
        
//        let offerDTO = OfferMapper.toDTO(offer: offer)
        
        let body: [String: Any] = ["price": offer.price, "bio": offer.bio]
        
        let path = "https://droppyn.herokuapp.com/offer/myoffer?shoeId=\(offer.shoe.id)&userId=609ed22c98cb1221fdbecea7&sizeId=\(offer.size.id)"
        guard let url = URL(string: path) else { fatalError()}
        
        
        let data = try! JSONSerialization.data(withJSONObject: body)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.dataTask(with: request) {(data, res, err ) in
            do {
                if let data = data {
                    let result = try JSONDecoder().decode(OfferDTO.self, from: data)
                    print(result)
                }
            } catch (let error) {
                print(error)
            }
        }.resume()
        
    }
    
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
        
       postMyOffer(offer: Offer(id: "", shoe: shoe, size: size, price: price, user: user))
//        fetchMyOffers()
    }
    


}
