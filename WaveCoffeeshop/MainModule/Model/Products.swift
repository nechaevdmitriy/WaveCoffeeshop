//
//  Products.swift
//  WaveCoffeeshop
//
//  Created by Максим Горячкин on 04.06.2022.
//

import Foundation
import UIKit

protocol Productable {
    
}

struct Product: Productable {
    var imgage: UIImage
    var name: String
    var description: String
    var price: Float
}
