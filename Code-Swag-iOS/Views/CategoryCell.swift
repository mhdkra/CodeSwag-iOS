//
//  CategoryCellTableViewCell.swift
//  Code-Swag-iOS
//
//  Created by Tiara Mahardika on 28/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }
    

    

}
