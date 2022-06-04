//
//  ModuleBuilder.swift
//  WaveCoffeeshop
//
//  Created by Максим Горячкин on 04.06.2022.
//

import Foundation
import UIKit

class ModuleBuilder {
    
    static func createMainModule () -> UIViewController {
        let viewController = MainViewController()
        let view = MainView()
        let adapter = MainCollectionViewDataSourceAdapter()
        view.dataSource = adapter
        view.configure()
        
        let vm = MainViewModeL()
        view.onEffect = vm.onEffect
        
        viewController.view = view
        
        return viewController
    }
    
    private init () {}
    
}
