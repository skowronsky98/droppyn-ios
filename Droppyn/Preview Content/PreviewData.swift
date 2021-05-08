//
//  PreviewData.swift
//  FitRite
//
//  Created by Oskar Skowronski on 16/04/2021.
//

import Foundation

class PreviewData {
    
    static var MyUser = User(username: "gierczak", email: "norbert.gierczak@gmail.com", firstname: "Adam", surname: "Małysz", phone: "909876345", photoURL: "profile", defultSize: SizeCharts[0])
    
    static var Users = [
        User(username: "essa", email: "norbert.gierczak@gmail.com", firstname: "Piotr", surname: "Kowalski", phone: "909876345", photoURL: "profile-1", defultSize: SizeCharts[0]),
        User(username: "admin", email: "norbert.gierczak@gmail.com", firstname: "Adma", surname: "Mickiewicz", phone: "909876345", photoURL: "profile", defultSize: SizeCharts[0]),
        User(username: "100pa", email: "norbert.gierczak@gmail.com", firstname: "Łukasz", surname: "Nowak", phone: "909876345", photoURL: "profile-1", defultSize: SizeCharts[0]),
        User(username: "tibijczyk", email: "norbert.gierczak@gmail.com", firstname: "Mateusz", surname: "Kłos", phone: "909876345", photoURL: "profile", defultSize: SizeCharts[0])
    ]
    
    
    static let Brands = [
        Brand(name: "Nike", image: "nike"),
        Brand(name: "Adidas", image: "adidas")
    ]
    
    static let Shoes = [
        Shoe(model: "Air Max 97", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Air Force 1", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Air Jordan 1", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Yeezy Boost 350", brand: Brands[1], image: "shoe", favorite: false),
        Shoe(model: "Ultraboost 1.0", brand: Brands[1], image: "shoe", favorite: false),
        Shoe(model: "Air Max 1", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Ultraboost 2.0", brand: Brands[1], image: "shoe", favorite: false),
        Shoe(model: "Air Jordan Retro 4", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Tekkno", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Trainer", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Flyknit Racer", brand: Brands[0], image: "shoe", favorite: false)
    ]
    
    static var SizeCharts = [
        SizeChart(id: "a", eu: "36.5", type: "m", uk: 4.0, us: 4.5, brand: Brands[0]),
        SizeChart(id: "s", eu: "47.5", type: "m", uk: 4.5, us: 5.0, brand: Brands[0]),
        SizeChart(id: "1", eu: "38", type: "m", uk: 5.0, us: 5.5, brand: Brands[0]),
        SizeChart(id: "2", eu: "38.5", type: "m", uk: 5.5, us: 6.0, brand: Brands[0]),
        SizeChart(id: "3", eu: "40", type: "m", uk: 6.0, us: 6.5, brand: Brands[0]),
        SizeChart(id: "4", eu: "40.5", type: "m", uk: 6.0, us: 7.0, brand: Brands[0]),
        SizeChart(id: "5", eu: "41", type: "m", uk: 9.0, us: 7.5, brand: Brands[0]),
        SizeChart(id: "7", eu: "42", type: "m", uk: 7.5, us: 8.0, brand: Brands[1]),
        SizeChart(id: "8", eu: "42.5", type: "m", uk: 8.5, us: 8.5, brand: Brands[0]),
        SizeChart(id: "9", eu: "43", type: "m", uk: 8.0, us: 9.0, brand: Brands[0]),
        SizeChart(id: "10", eu: "44", type: "m", uk: 8.5, us: 9.5, brand: Brands[0]),
        SizeChart(id: "11", eu: "44.5", type: "m", uk: 9.0, us: 10.0, brand: Brands[0]),
        SizeChart(id: "12", eu: "46", type: "m", uk: 7.5, us: 10.5, brand: Brands[1]),
        SizeChart(id: "13", eu: "47", type: "m", uk: 8.0, us: 11.0, brand: Brands[1])
    
    ]
    
    static var MyOffers = [
        Offer(id: UUID(), shoe: Shoes[1], size: SizeCharts[0], price: 130, user: MyUser),
        Offer(id: UUID(), shoe: Shoes[0], size: SizeCharts[1], price: 120, active: false, user: MyUser),
        Offer(id: UUID(), shoe: Shoes[2], size: SizeCharts[1], price: 100, user: MyUser),
        Offer(id: UUID(), shoe: Shoes[0], size: SizeCharts[3], price: 100, user: MyUser),
        Offer(id: UUID(), shoe: Shoes[3], size: SizeCharts[4], price: 500, active: false, user: MyUser)
    ]
    
    
    static var Offers = [
        Offer(id: UUID(), shoe: Shoes[1], size: SizeCharts[0], price: 1324, user: Users[0]),
        Offer(id: UUID(), shoe: Shoes[10], size: SizeCharts[1], price: 43, user: Users[0]),
        Offer(id: UUID(), shoe: Shoes[9], size: SizeCharts[1], price: 192, user: Users[0]),
        Offer(id: UUID(), shoe: Shoes[6], size: SizeCharts[3], price: 404, user: Users[0]),
        Offer(id: UUID(), shoe: Shoes[5], size: SizeCharts[4], price: 500, user: Users[0]),
        Offer(id: UUID(), shoe: Shoes[4], size: SizeCharts[0], price: 130, user: Users[0]),
        Offer(id: UUID(), shoe: Shoes[3], size: SizeCharts[1], price: 120, user: Users[0]),
        Offer(id: UUID(), shoe: Shoes[4], size: SizeCharts[1], price: 100, user: Users[1]),
        Offer(id: UUID(), shoe: Shoes[4], size: SizeCharts[3], price: 100, user: Users[2]),
        Offer(id: UUID(), shoe: Shoes[1], size: SizeCharts[0], price: 100, user: Users[3]),
        Offer(id: UUID(), shoe: Shoes[0], size: SizeCharts[1], price: 120, user: Users[3]),
        Offer(id: UUID(), shoe: Shoes[2], size: SizeCharts[1], price: 100, user: Users[3]),
        Offer(id: UUID(), shoe: Shoes[0], size: SizeCharts[3], price: 100, user: Users[3]),
        Offer(id: UUID(), shoe: Shoes[1], size: SizeCharts[0], price: 110, user: Users[2]),
        Offer(id: UUID(), shoe: Shoes[0], size: SizeCharts[1], price: 120, user: Users[2]),
        Offer(id: UUID(), shoe: Shoes[2], size: SizeCharts[1], price: 100, user: Users[1]),
        Offer(id: UUID(), shoe: Shoes[0], size: SizeCharts[3], price: 100, user: Users[1])
    ]
    

}
