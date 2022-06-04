//
//  MainViewModel.swift
//  WaveCoffeeshop
//
//  Created by Максим Горячкин on 04.06.2022.
//

import UIKit

enum Effect {
    case loaded(model: [Productable])
}

protocol MainViewModelProtocol {
    var onEffect: ((Effect) -> Void)? { get set }
}

class MainViewModeL: MainViewModelProtocol {
    
    var products: [Productable]!
    
    var onEffect: ((Effect) -> Void)?
    
    func start() {
        products = createProducts()
        onEffect!(.loaded(model: products))
    }
    
}

private extension MainViewModeL {
    
    func createProducts() -> [Productable] {
        
        var productableArray = [Productable]()
        let coffeeOne = Product(imgage: UIImage(named: "Cappuccino") ?? UIImage(), name: "Cappuchino", description: Texts.cappuccinoDescription, price: 169.00)
        
        let coffeeTwo = Product(imgage: UIImage(named: "latte") ?? UIImage(), name: "Latte", description: Texts.latteDescription, price: 220.0)
        
        let coffeeThree = Product(imgage: UIImage(named: "Americano") ?? UIImage(), name: "Americano", description: Texts.americanoDescription, price: 180.0)
        
        let coffeeFour = Product(imgage: UIImage(named: "espresso") ?? UIImage(), name: "Espresso", description: Texts.espressoDescription, price: 90.0)
        
        let coffeeFive = Product(imgage: UIImage(named: "flw") ?? UIImage(), name: "Flat White", description: Texts.flatwhiteDescription, price: 200.0)
        
        productableArray.append(coffeeOne)
        productableArray.append(coffeeTwo)
        productableArray.append(coffeeThree)
        productableArray.append(coffeeFour)
        productableArray.append(coffeeFive)
        
        return productableArray
        
    }
}
