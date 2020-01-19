//
//  ProductCollectionViewCell.swift
//  Beer App
//
//  Created by MacDev on 18/01/20.
//  Copyright © 2020 MacDev. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAbv: UILabel!
    @IBOutlet weak var holderView: UIView!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        holderView.layer.cornerRadius = 10
        holderView.layer.borderWidth = 1.0

        holderView.layer.borderColor = UIColor.clear.cgColor

        holderView.layer.shadowColor = UIColor.gray.cgColor
        holderView.layer.shadowRadius = 4.0
        holderView.layer.shadowOpacity = 0.3
        holderView.layer.masksToBounds = false
    }
    
    func setupCell(beer: Beer) {
        
        lblName.text = beer.name
        
        if let abv = beer.abv {
            lblAbv.text = "teor alcoólico - " + String(abv) + "%"
        }
        
        let url = URL(string: beer.image_url)
        let data = try? Data(contentsOf: url!)
        self.imgView.image = UIImage(data: data!)
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        layoutAttributes.bounds.size.height = systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
        return layoutAttributes
    }
    
}
