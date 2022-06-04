//
//  ViewController.swift
//  WaveCoffeeshop
//
//  Created by Максим Горячкин on 04.06.2022.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    var mainView: MainViewProtocol!

    override func loadView() {
        view = mainView
    }

}
