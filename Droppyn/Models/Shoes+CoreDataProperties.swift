//
//  Shoes+CoreDataProperties.swift
//  FitRite
//
//  Created by Oskar Skowronski on 16/02/2021.
//
//

import Foundation
import CoreData


extension Shoes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Shoes> {
        return NSFetchRequest<Shoes>(entityName: "Shoes")
    }

    @NSManaged public var factor: Double
    @NSManaged public var image: URL?
    @NSManaged public var model: String?
    @NSManaged public var brand: Brands?

}

extension Shoes : Identifiable {

}
