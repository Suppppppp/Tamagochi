//
//  MainViewController.swift
//  Tamagotchi
//
//  Created by KYUNGSUP GO on 2022/11/21.
//

import UIKit

class MainViewController: UIViewController {
    
    var data = imageDataInfo()

    @IBOutlet weak var mainViewBubbleOutlet: UIImageView!
    @IBOutlet weak var mainViewTamagochiImageOutlet: UIImageView!
    @IBOutlet weak var mainViewTamagochiNameBackview: UIView!
    @IBOutlet weak var mainViewLabelOutlet: UILabel!
    
    @IBOutlet weak var mainViewTamagochiLevelLabelOutlet: UILabel!
    @IBOutlet weak var mainViewRiceCountingOutlet: UILabel!
    @IBOutlet weak var mainViewWaterCountingOutlet: UILabel!
    
    @IBOutlet weak var mainViewRiceFeedTextFieldOutlet: UITextField!
    @IBOutlet weak var mainViewRiceFeedButtonOutlet: UIButton!
    
    @IBOutlet weak var mainViewWaterFeedButtonOutlet: UIButton!
    @IBOutlet weak var mainViewWaterFeedTextFieldOutlet: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        navigationItem.title = "대장님의 다마고치"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(settingButtonClicked))
        navigationItem.rightBarButtonItem?.tintColor =  UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1) 
        
        
        setBasicBackgroundColor()
        mainViewBasicSetting()
        
        
    }
    
    
    @objc
    func settingButtonClicked() {
        
        let sb = UIStoryboard(name: "SettingView", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SettingViewTableViewController") as! SettingViewTableViewController
        
        vc.navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        
        
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func mainViewBasicSetting(){
        
        // MARK: - mainView 다마고치 말풍선
        mainViewBubbleOutlet.image = UIImage(named: "bubble")
        
        
        // MARK: - mainView 다마고치 이미지 & 이름
        mainViewTamagochiImageOutlet.image = UIImage(named: data.imageDataset[0].tamagochiImageName)
        mainViewLabelOutlet.text = data.imageDataset[0].tamagochiName
        mainViewLabelOutlet.font = UIFont.systemFont(ofSize: 14)
        
        // MARK: - mainView 밥먹기 버튼
        mainViewRiceFeedButtonOutlet.setTitle("밥먹기", for: .normal)
        mainViewRiceFeedButtonOutlet.setImage(UIImage(systemName: "drop.circle"), for: .normal)
        mainViewRiceFeedButtonOutlet.layer.cornerRadius = 6
        mainViewRiceFeedButtonOutlet.clipsToBounds = true
        mainViewRiceFeedButtonOutlet.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        mainViewRiceFeedButtonOutlet.layer.borderWidth = 1
        
        // MARK: - 밥먹이기 textField
        mainViewRiceFeedTextFieldOutlet.placeholder = "밥주세용"
        
        // MARK: - mainView 물먹기 버튼
        mainViewWaterFeedButtonOutlet.setTitle("물먹기", for: .normal)
        mainViewWaterFeedButtonOutlet.setImage(UIImage(systemName: "leaf.circle"), for: .normal)
        mainViewWaterFeedButtonOutlet.layer.cornerRadius = 6
        mainViewWaterFeedButtonOutlet.clipsToBounds = true
        mainViewWaterFeedButtonOutlet.layer.borderColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1).cgColor
        mainViewWaterFeedButtonOutlet.layer.borderWidth = 1
        
        // MARK: - 물먹이기 textField
        mainViewWaterFeedTextFieldOutlet.placeholder = "물주세용"
        
        
        
        
    }

}
