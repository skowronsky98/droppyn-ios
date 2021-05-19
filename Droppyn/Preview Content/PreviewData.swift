//
//  PreviewData.swift
//  FitRite
//
//  Created by Oskar Skowronski on 16/04/2021.
//

import Foundation

class PreviewData {
    
    static let shoeMedia = Media(imageUrl: "shoe", smallImageUrl: "", thumbUrl: "")
    
    
    static var MyUser = User(id: "609ed22c98cb1221fdbecea7",username: "gierczak", email: "norbert.gierczak@gmail.com", firstname: "Adam", surname: "Małysz", phone: "909876345", photoURL: "profile", defultSize: SizeCharts[0])
    
    static var Users = [
        User(id: "1",username: "essa", email: "norbert.gierczak@gmail.com", firstname: "Piotr", surname: "Kowalski", phone: "909876345", photoURL: "profile-1", defultSize: SizeCharts[0]),
        User(id: "2",username: "admin", email: "norbert.gierczak@gmail.com", firstname: "Adma", surname: "Mickiewicz", phone: "909876345", photoURL: "profile", defultSize: SizeCharts[0]),
        User(id: "3",username: "100pa", email: "norbert.gierczak@gmail.com", firstname: "Łukasz", surname: "Nowak", phone: "909876345", photoURL: "profile-1", defultSize: SizeCharts[0]),
        User(id: "4",username: "tibijczyk", email: "norbert.gierczak@gmail.com", firstname: "Mateusz", surname: "Kłos", phone: "909876345", photoURL: "profile", defultSize: SizeCharts[0])
    ]
    
    
    static let Brands = [
        Brand(id: "1", name: "Nike", media: Media(imageUrl: "nike", smallImageUrl: "", thumbUrl: "")),
        Brand(id: "2", name: "Adidas", media: Media(imageUrl: "adidas", smallImageUrl: "", thumbUrl: ""))
    ]
    
    static let Shoes = [
        Shoe(model: "Air Max 97", brand: Brands[0], media: shoeMedia),
        Shoe(model: "Air Force 1", brand: Brands[0], media: shoeMedia),
        Shoe(model: "Air Jordan 1", brand: Brands[0], media: shoeMedia),
        Shoe(model: "Yeezy Boost 350", brand: Brands[1], media: shoeMedia),
        Shoe(model: "Ultraboost 1.0", brand: Brands[1], media: shoeMedia),
        Shoe(model: "Air Max 1", brand: Brands[0], media: shoeMedia),
        Shoe(model: "Ultraboost 2.0", brand: Brands[1], media: shoeMedia),
        Shoe(model: "Air Jordan Retro 4", brand: Brands[0], media: shoeMedia),
        Shoe(model: "Tekkno", brand: Brands[0], media: shoeMedia),
        Shoe(model: "Trainer", brand: Brands[0], media: shoeMedia),
        Shoe(model: "Flyknit Racer", brand: Brands[0], media: shoeMedia)
    ]
    
    static var SizeCharts = [
        SizeChart(id: "a", eu: "36.5", type: "m", uk: 4.0, us: 4.5, brandID: "1"),
        SizeChart(id: "s", eu: "47.5", type: "m", uk: 4.5, us: 5.0, brandID: "1"),
        SizeChart(id: "1", eu: "38", type: "m", uk: 5.0, us: 5.5, brandID: "1"),
        SizeChart(id: "2", eu: "38.5", type: "m", uk: 5.5, us: 6.0, brandID: "1"),
        SizeChart(id: "3", eu: "40", type: "m", uk: 6.0, us: 6.5, brandID: "1"),
        SizeChart(id: "4", eu: "40.5", type: "m", uk: 6.0, us: 7.0, brandID: "1"),
        SizeChart(id: "5", eu: "41", type: "m", uk: 9.0, us: 7.5, brandID: "1"),
        SizeChart(id: "7", eu: "42", type: "m", uk: 7.5, us: 8.0, brandID: "1"),
        SizeChart(id: "8", eu: "42.5", type: "m", uk: 8.5, us: 8.5, brandID: "1"),
        SizeChart(id: "9", eu: "43", type: "m", uk: 8.0, us: 9.0, brandID: "1"),
        SizeChart(id: "10", eu: "44", type: "m", uk: 8.5, us: 9.5, brandID: "1"),
        SizeChart(id: "11", eu: "44.5", type: "m", uk: 9.0, us: 10.0, brandID: "1"),
        SizeChart(id: "12", eu: "46", type: "m", uk: 7.5, us: 10.5, brandID: "1"),
        SizeChart(id: "13", eu: "47", type: "m", uk: 8.0, us: 11.0, brandID: "1")
    
    ]
    
    static var MyOffers = [
        Offer(id: UUID().uuidString, shoe: Shoes[1], size: SizeCharts[0], price: 130, user: MyUser),
        Offer(id: UUID().uuidString, shoe: Shoes[0], size: SizeCharts[1], price: 120, active: false, user: MyUser),
        Offer(id: UUID().uuidString, shoe: Shoes[2], size: SizeCharts[1], price: 100, user: MyUser),
        Offer(id: UUID().uuidString, shoe: Shoes[0], size: SizeCharts[3], price: 100, user: MyUser),
        Offer(id: UUID().uuidString, shoe: Shoes[3], size: SizeCharts[4], price: 500, active: false, user: MyUser)
    ]
    
    
    static var Offers = [
        Offer(id: UUID().uuidString, shoe: Shoes[1], size: SizeCharts[0], price: 1324, user: Users[0]),
        Offer(id: UUID().uuidString, shoe: Shoes[10], size: SizeCharts[1], price: 43, user: Users[0]),
        Offer(id: UUID().uuidString, shoe: Shoes[9], size: SizeCharts[1], price: 192, user: Users[0]),
        Offer(id: UUID().uuidString, shoe: Shoes[6], size: SizeCharts[3], price: 404, user: Users[2]),
        Offer(id: UUID().uuidString, shoe: Shoes[5], size: SizeCharts[4], price: 500, user: Users[2]),
        Offer(id: UUID().uuidString, shoe: Shoes[4], size: SizeCharts[0], price: 130, user: Users[1]),
        Offer(id: UUID().uuidString, shoe: Shoes[3], size: SizeCharts[1], price: 120, user: Users[1]),
        Offer(id: UUID().uuidString, shoe: Shoes[4], size: SizeCharts[1], price: 100, user: Users[1]),
        Offer(id: UUID().uuidString, shoe: Shoes[4], size: SizeCharts[3], price: 100, user: Users[2]),
        Offer(id: UUID().uuidString, shoe: Shoes[1], size: SizeCharts[0], price: 100, user: Users[3]),
        Offer(id: UUID().uuidString, shoe: Shoes[0], size: SizeCharts[1], price: 120, user: Users[3]),
        Offer(id: UUID().uuidString, shoe: Shoes[2], size: SizeCharts[1], price: 100, user: Users[3]),
        Offer(id: UUID().uuidString, shoe: Shoes[0], size: SizeCharts[3], price: 100, user: Users[3]),
        Offer(id: UUID().uuidString, shoe: Shoes[1], size: SizeCharts[0], price: 110, user: Users[2]),
        Offer(id: UUID().uuidString, shoe: Shoes[0], size: SizeCharts[1], price: 120, user: Users[2]),
        Offer(id: UUID().uuidString, shoe: Shoes[2], size: SizeCharts[1], price: 100, user: Users[1]),
        Offer(id: UUID().uuidString, shoe: Shoes[0], size: SizeCharts[3], price: 100, user: Users[1])
    ]
    
    static var Favorite = [
        Offers[14],
        Offers[15],
        Offers[16],
        Offers[11],
        Offers[12]
    ]
    

}
