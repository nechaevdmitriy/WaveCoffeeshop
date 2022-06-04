//
//  CollectionViewCell.swift
//  WaveCoffeeshop
//
//  Created by Максим Горячкин on 04.06.2022.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    static let id = "mainCollectionViewCell"
    let productImage = UIImageView()
    var productTitle: UILabel!
    var productDescription: UILabel!
    
    func configure() {
        contentView.bounds = self.frame
        contentView.backgroundColor = UIColor(red: 235/255.0, green: 235/255.0, blue: 235/255.0, alpha: 1)
        contentView.layer.cornerRadius = 12
        makeProductImage()
    }
    
}

private extension MainCollectionViewCell {
    
    func makeProductImage() {
        contentView.addSubview(productImage)
        
        productImage.contentMode = .scaleAspectFit
        productImage.image = UIImage(named: "coffee")
        
        productImage.snp.makeConstraints { make in
            make.topMargin.equalToSuperview().inset(12)
            make.leftMargin.equalToSuperview().inset(24)
            make.bottomMargin.equalToSuperview().inset(12)
            make.width.equalTo(self.bounds.width / 4)
        }
    }
    
}
