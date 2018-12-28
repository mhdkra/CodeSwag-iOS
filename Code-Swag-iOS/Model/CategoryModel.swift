//
//  CategoryModel.swift
//  Code-Swag-iOS
//
//  Created by Tiara Mahardika on 28/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
