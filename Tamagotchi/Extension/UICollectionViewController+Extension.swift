//
//  UICollectionViewController+Extension.swift
//  Tamagotchi
//
//  Created by KYUNGSUP GO on 2022/11/20.
//

import UIKit

extension UICollectionViewController {
    
    
    override func setBasicBackgroundColor() {
        collectionView.backgroundColor =  UIColor(red: 245/255, green: 252/255, blue: 252/255,  alpha: 1)
    }
    
    
    
    // MARK: - BaseView의 CollectionView Layout 구성
    func setCollectionViewLayout(_ collectionView: UICollectionView) {
        
        let layout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        let spacing: CGFloat = 5
        
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing * 2, bottom: spacing, right: spacing * 2)
        layout.itemSize = CGSize(width: (width / 3) - spacing * 4 , height: (height / 6) - spacing * 1 )
        layout.minimumInteritemSpacing = spacing
        layout.scrollDirection = .vertical
        
        
        
        collectionView.collectionViewLayout = layout
        
    }
    
    
}
