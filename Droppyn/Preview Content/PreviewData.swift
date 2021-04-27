//
//  PreviewData.swift
//  FitRite
//
//  Created by Oskar Skowronski on 16/04/2021.
//

import Foundation

class PreviewData {
    
    static var MyUser = User(username: "gierczak", email: "norbert.gierczak@gmail.com", firstname: "Adam", surname: "Małysz", phone: "909876345", photoURL: "profile", defultSize: SizeCharts[0])
    
    static let Brands = [
        Brand(name: "Nike", image: "nike"),
        Brand(name: "Adidas", image: "adidas")
    ]
    
    static let Shoes = [
        Shoe(model: "Air Max 97", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Air Force 1", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Air Jordan", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Yeezy Boost 350", brand: Brands[1], image: "shoe", favorite: false),
        Shoe(model: "Ultraboost 1.0", brand: Brands[1], image: "shoe", favorite: false),
        Shoe(model: "Air Max 1", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Ultraboost 2.0", brand: Brands[1], image: "shoe", favorite: false),
        Shoe(model: "Jordan Retro 4", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Tekkno", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Trainer", brand: Brands[0], image: "shoe", favorite: false),
        Shoe(model: "Flyknit Racer", brand: Brands[0], image: "shoe", favorite: false)
    ]
    
    static var SizeCharts = [
        SizeChart(id: "a", eu: "40.5", type: "m", uk: 8.0, us: 9.0, brand: Brands[0]),
        SizeChart(id: "s", eu: "41", type: "m", uk: 8.5, us: 9.9, brand: Brands[0]),
        SizeChart(id: "1", eu: "40.5", type: "m", uk: 8.0, us: 9.0, brand: Brands[0]),
        SizeChart(id: "2", eu: "41", type: "m", uk: 8.5, us: 9.9, brand: Brands[0]),
        SizeChart(id: "3", eu: "42.5", type: "m", uk: 8.0, us: 9.0, brand: Brands[0]),
        SizeChart(id: "4", eu: "43", type: "m", uk: 8.5, us: 9.9, brand: Brands[0]),
        SizeChart(id: "5", eu: "44", type: "m", uk: 9.0, us: 10.0, brand: Brands[0]),
        SizeChart(id: "7", eu: "41 1/3", type: "m", uk: 7.5, us: 8.5, brand: Brands[1]),
        SizeChart(id: "8", eu: "41", type: "m", uk: 8.5, us: 9.9, brand: Brands[0]),
        SizeChart(id: "9", eu: "42.5", type: "m", uk: 8.0, us: 9.0, brand: Brands[0]),
        SizeChart(id: "10", eu: "43", type: "m", uk: 8.5, us: 9.9, brand: Brands[0]),
        SizeChart(id: "11", eu: "44", type: "m", uk: 9.0, us: 10.0, brand: Brands[0]),
        SizeChart(id: "12", eu: "41 1/3", type: "m", uk: 7.5, us: 8.5, brand: Brands[1]),
        SizeChart(id: "13", eu: "42 2/3", type: "m", uk: 8.0, us: 9.0, brand: Brands[1]),
        SizeChart(id: "14", eu: "43 1/3", type: "m", uk: 8.5, us: 9.5, brand: Brands[1]),
        SizeChart(id: "15", eu: "44", type: "m", uk: 9.5, us: 10.0, brand: Brands[1])
    ]
    
    static var MyOffers = [
        MyOffer(id: UUID(), shoe: Shoes[1], size: SizeCharts[0], price: 130),
        MyOffer(id: UUID(), shoe: Shoes[0], size: SizeCharts[1], price: 120, active: false),
        MyOffer(id: UUID(), shoe: Shoes[2], size: SizeCharts[1], price: 100),
        MyOffer(id: UUID(), shoe: Shoes[0], size: SizeCharts[3], price: 100),
        MyOffer(id: UUID(), shoe: Shoes[3], size: SizeCharts[4], price: 500, active: false)
    ]
    
}
