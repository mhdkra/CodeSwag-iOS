//
//  ProductModel.swift
//  Code-Swag-iOS
//
//  Created by Tiara Mahardika on 29/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var price: String
    
    init(title: String, imageName: String, price: String) {
        self.title = title
        self.imageName = imageName
        self.price = price 
    }
}
