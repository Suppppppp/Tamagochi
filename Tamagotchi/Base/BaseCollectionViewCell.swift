//
//  BaseCollectionViewCell.swift
//  Tamagotchi
//
//  Created by KYUNGSUP GO on 2022/11/20.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    
    var data = imageDataInfo()
    
    @IBOutlet weak var tamagochiImageViewOutlet: UIImageView!
    @IBOutlet weak var tamagochiNameLabelOutlet: UILabel!
    @IBOutlet weak var tamagochiNameBackViewOutlet: UIView!
    

    
    func configureCell(_ cell: BaseCollectionViewCell, indexPath: IndexPath) {
        
        // image + texInfo basic setting
        switch indexPath.item {
        case 0,1,2:
            cell.tamagochiImageViewOutlet.image = UIImage(named: data.imageBaseViewDataset[indexPath.item].tamagochiImageName)
            cell.tamagochiNameLabelOutlet.text = data.imageBaseViewDataset[indexPath.item].tamagochiName
        default:
            cell.tamagochiImageViewOutlet.image = UIImage(named: data.imageBaseViewDataset[3].tamagochiImageName)
            cell.tamagochiNameLabelOutlet.text = data.imageBaseViewDataset[3].tamagochiName
        }

        
        
        // MARK: - text basic Color setting
        cell.tamagochiNameLabelOutlet.font = UIFont.boldSystemFont(ofSize: 14)
        cell.tamagochiNameLabelOutlet.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)

        
        // MARK: - textBackview basic setting
        cell.tamagochiNameBackViewOutlet.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255,  alpha: 1)
        cell.tamagochiNameBackViewOutlet.layer.borderColor = UIColor.black.cgColor
        cell.tamagochiNameBackViewOutlet.layer.borderWidth = 1
        cell.tamagochiNameBackViewOutlet.clipsToBounds = true
        cell.tamagochiNameBackViewOutlet.layer.cornerRadius = 6
    }
    
    
    
    
}
