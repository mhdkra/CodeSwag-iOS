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
    
    private let hats = [Product(title: "Devslopes New cool hats1", imageViewName: "hat01.png", price: "$23"),
                        Product(title: "Devslopes New cool hats2", imageViewName: "hat02.png", price: "$34"),
                        Product(title: "Devslopes New cool hats2", imageViewName: "hat03.png", price: "$23"),
                        Product(title: "Devslopes New cool hats3", imageViewName: "hat04.png", price: "$22")]
    
    private let hoodies = [Product(title: "Devslopes New cool hats1", imageViewName: "hoodie01.png", price: "$23"),
                        Product(title: "Devslopes New cool hats2", imageViewName: "hoodie02.png", price: "$34"),
                        Product(title: "Devslopes New cool hats2", imageViewName: "hoodie03.png", price: "$23"),
                        Product(title: "Devslopes New cool hats3", imageViewName: "hoodie04.png", price: "$22")]
    
    private let shirt = [Product(title: "devslopes new cool shirt1", imageViewName: "shirt01.png", price: "$40"),
                         Product(title: "devslopes new cool shirt2", imageViewName: "shirt02.png", price: "$40"),
                         Product(title: "devslopes new cool shirt3", imageViewName: "shirt03.png", price: "$40"),
                         Product(title: "devslopes new cool shirt4", imageViewName: "shirt04.png", price: "$40")]
    
    private let digitalGoods = [Product]() //should initialize even you don't have data to feed to the ColView
    
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
