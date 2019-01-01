//
//  ProductVC.swift
//  Code-Swag-iOS
//
//  Created by Tiara Mahardika on 30/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import UIKit


class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollection.delegate =  self
        productCollection.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
             cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    

    func initProduct (category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
        
    }

}
