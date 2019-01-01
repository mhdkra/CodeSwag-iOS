//
//  PeoductCell.swift
//  Code-Swag-iOS
//
//  Created by Tiara Mahardika on 29/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    
    func updateViews(product: Product){
        productPrice.text = product.price
        productTitle.text = product.title
        productImage.image = UIImage(named: product.imageName)
        
        
    }
    
}
