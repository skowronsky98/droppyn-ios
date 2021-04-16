//
//  Brands+CoreDataProperties.swift
//  FitRite
//
//  Created by Oskar Skowronski on 16/02/2021.
//
//

import Foundation
import CoreData


extension Brands {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Brands> {
        return NSFetchRequest<Brands>(entityName: "Brands")
    }

    @NSManaged public var image: URL?
    @NSManaged public var name: String?
    @NSManaged public var shoes: NSSet?

}

// MARK: Generated accessors for shoes
extension Brands {

    @objc(addShoesObject:)
    @NSManaged public func addToShoes(_ value: Shoes)

    @objc(removeShoesObject:)
    @NSManaged public func removeFromShoes(_ value: Shoes)

    @objc(addShoes:)
    @NSManaged public func addToShoes(_ values: NSSet)

    @objc(removeShoes:)
    @NSManaged public func removeFromShoes(_ values: NSSet)

}

extension Brands : Identifiable {

}
