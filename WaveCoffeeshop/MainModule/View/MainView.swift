//
//  MainView.swift
//  WaveCoffeeshop
//
//  Created by Максим Горячкин on 04.06.2022.
//

import UIKit
import SnapKit

protocol MainViewProtocol: UIView {}

class MainView: UIView, MainViewProtocol {
    
    var onEffect: ((Effect) -> Void)?
    
    private let layout = UICollectionViewFlowLayout()
    private var productCollectionView: UICollectionView!
    var dataSource: UICollectionViewDataSource!
    
    private let aboutButton = UIButton()
    private let header = UILabel()
    
    func configure() {
        backgroundColor = .white
        configureAboutButton()
        configureLabel()
        configureProductCollectionView()
    }
    
}

private extension MainView {
    func configureAboutButton() {
        
        addSubview(aboutButton)
        
        aboutButton.backgroundColor = .darkGray
        aboutButton.setTitle(Texts.aboutButtonText, for: .normal)
        aboutButton.layer.cornerRadius = 16
        
        aboutButton.titleLabel?.textColor = .darkGray
        
        aboutButton.snp.makeConstraints { button in
            button.leading.equalToSuperview().inset(16)
            button.trailing.equalToSuperview().inset(16)
            button.top.equalToSuperview().inset(64)
            button.height.equalTo(52)
        }
    }
    
    func configureLabel() {
        
        addSubview(header)
        header.font = UIFont.systemFont(ofSize: 16, weight: .black)
        header.text = Texts.mainHeader
        
        header.snp.makeConstraints { make in
            make.topMargin.equalTo(aboutButton.snp_bottomMargin).inset(-56)
            make.leading.equalToSuperview().inset(16)
        }
        
    }
    
    func configureProductCollectionView() {
        
        productCollectionView = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        productCollectionView.delegate = self
        productCollectionView.dataSource = dataSource
        productCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: MainCollectionViewCell.id)
        productCollectionView.showsVerticalScrollIndicator = false
        
        addSubview(productCollectionView)
        
        productCollectionView.snp.makeConstraints { make in
            make.topMargin.equalTo(header.snp_bottomMargin).inset(-32)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
            make.bottomMargin.equalToSuperview().inset(0)
        }
    }
}

extension MainView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: productCollectionView.bounds.width, height: 140)
    }
}
