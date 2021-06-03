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
    
    func postMyOffer(offer: Offer){
        
//        let offerDTO = OfferMapper.toDTO(offer: offer)
        
        let body: [String: Any] = ["price": offer.price, "bio": offer.bio]
        
        let path = "https://droppyn.herokuapp.com/offer/myoffer?shoeId=\(offer.shoe.id)&userId=\(offer.user.id)&sizeId=\(offer.size.id)"
        guard let url = URL(string: path) else {
            print("Invalid POST myOffer URL")
            return
        }
        
        
        let data = try! JSONSerialization.data(withJSONObject: body)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.dataTask(with: request) {(data, res, err ) in
            do {
                if let data = data {
                    _ = try JSONDecoder().decode(OfferDTO.self, from: data)
//                    print(result)
                    self.fetchMyOffers()
                }
            } catch (let error) {
                print(error)
            }
        }.resume()
        
    }
    
    func fetchMyOffers() {
        let path = "https://droppyn.herokuapp.com/offer/myoffer/all?userId=\(user.id)"
        guard let url = URL(string: path) else {
            print("Invalid GET myOffer URL")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([OfferDTO].self, from: data) {
                    DispatchQueue.main.async {
                        self.myOffers = OfferMapper.toDomain(offersDTO: decodedResponse)
                        print("MyOffers Fetched form API")
                    }
                    return
                }
            }
        }.resume()
        
    }
    
    func updateMyOffer(offer: Offer) {
        
        let body: [String: Any] = ["_id": offer.id, "price": offer.price, "active": offer.active, "bio": offer.bio]
        
        let path = "https://droppyn.herokuapp.com/offer/myoffer?shoeId=\(offer.shoe.id)&userId=\(offer.user.id)&sizeId=\(offer.size.id)"
        guard let url = URL(string: path) else { fatalError()}
        
        
        let data = try! JSONSerialization.data(withJSONObject: body)
        
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.dataTask(with: request) {(data, res, err ) in
            do {
                if let data = data {
                    let result = try JSONDecoder().decode(OfferDTO.self, from: data)
                    print(result)
                    self.fetchMyOffers()
                }
            } catch (let error) {
                print(error)
            }
        }.resume()
    }
    
    func deleteMyOffer(offer: Offer) {
        
//        let body: [String: Any] = ["_id": offer.id, "price": offer.price, "bio": offer.bio]
        
        let path = "https://droppyn.herokuapp.com/offer/myoffer?id=\(offer.id)&userId=\(offer.user.id)"
        guard let url = URL(string: path) else { fatalError()}
        
        
//        let data = try! JSONSerialization.data(withJSONObject: body)
        
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
//        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.dataTask(with: request) {(data, res, err ) in
            do {
                if let data = data {
        
//                    print(result)
                    self.fetchMyOffers()
                }
            } catch (let error) {
                print(error)
            }
        }.resume()
    }
    
    init() {
        //load const data
//        myOffers = PreviewData.MyOffers
        user = PreviewData.MyUser
        fetchMyOffers()
    
    }

    func deleteItem(index: Int) {
        let tmpOffer = myOffers[index]
        deleteMyOffer(offer: tmpOffer)
        
        myOffers.remove(at: index)
    }
    
    func addOffer(shoe: Shoe, size: SizeChart, price: Double){
        myOffers.append(Offer(id: UUID().uuidString, shoe: shoe, size: size, price: price, user: user))
        
       postMyOffer(offer: Offer(id: "", shoe: shoe, size: size, price: price, user: user))
//        fetchMyOffers()
    }
    


}
