//
//  DataService.swift
//  Code-Swag-iOS
//
//  Created by Tiara Mahardika on 28/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [Category(title: "SHIRTS", imageName: "shirts.png"),
                              Category(title: "HOODIES", imageName: "hoodies.png"),
                              Category(title: "HATS", imageName: "hats.png"),
                              Category(title: "DIGITAL", imageName: "digital.png")]
    
    
    func getCategories() -> [Category]{
        
        return categories
    }
    
    private let hats = [Product(title: "Devslopes New cool hats1", imageName: "hat01.png", price: "$23"),
                        Product(title: "Devslopes New cool hats2", imageName: "hat02.png", price: "$34"),
                        Product(title: "Devslopes New cool hats2", imageName: "hat03.png", price: "$23"),
                        Product(title: "Devslopes New cool hats3", imageName: "hat04.png", price: "$22")]
    
    private let hoodies = [Product(title: "Devslopes New cool hats1", imageName: "hoodie01.png", price: "$23"),
                        Product(title: "Devslopes New cool hats2", imageName: "hoodie02.png", price: "$34"),
                        Product(title: "Devslopes New cool hats2", imageName: "hoodie03.png", price: "$23"),
                        Product(title: "Devslopes New cool hats3", imageName: "hoodie04.png", price: "$22")]
    
    private let shirt = [Product(title: "devslopes new cool shirt1", imageName: "shirt01.png", price: "$40"),
                         Product(title: "devslopes new cool shirt2", imageName: "shirt02.png", price: "$40"),
                         Product(title: "devslopes new cool shirt3", imageName: "shirt03.png", price: "$40"),
                         Product(title: "devslopes new cool shirt4", imageName: "shirt04.png", price: "$40")]
    
    private let digitalGoods = [Product]() //should initialize even you don't have data to feed to the ColView
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
            case "SHIRTS" :
                return getShirt()
            case "HATS" :
                return getHats()
            case "HOODIES" :
                return getHoodies()
        case "DIGITAL" :
                return getDigitalGoods()
        default:
                return getShirt()
        }
    }
    
    func getHats() -> [Product]{
        
        return hats
    }
    
    func getHoodies() -> [Product]{
        
        return hoodies
    }
    
    func getShirt()-> [Product]{
        return shirt
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
