//
//  SettingViewTableViewCell.swift
//  Tamagotchi
//
//  Created by KYUNGSUP GO on 2022/11/21.
//

import UIKit

class SettingViewTableViewCell: UITableViewCell {

    @IBOutlet weak var settingViewTableViewCellLabelOutlet: UILabel!
    @IBOutlet weak var settingViewTableViewCellImageOutlet: UIImageView!
    
 
    
    func configureCell(_ cell: SettingViewTableViewCell, indexPath: IndexPath, settingList: [String], settingImageList: [String]){
        
        cell.settingViewTableViewCellLabelOutlet.text = settingList[indexPath.row]
        cell.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255,  alpha: 1)
        cell.accessoryType = .disclosureIndicator
        cell.settingViewTableViewCellImageOutlet.image = UIImage(systemName: settingImageList[indexPath.row] )
        
        cell.settingViewTableViewCellImageOutlet.tintColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
    
        
        
    }
}
