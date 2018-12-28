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
                              Category(title: "HATS", imageName: "hats.png")]
    
    
    func getCategories() -> [Category]{
        
        return categories
    }
}
