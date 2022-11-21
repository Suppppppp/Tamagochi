//
//  DetailPopupViewController.swift
//  Tamagotchi
//
//  Created by KYUNGSUP GO on 2022/11/21.
//

import UIKit

class DetailPopupViewController: UIViewController {

    
    @IBOutlet weak var popupBackView: UIView!
    @IBOutlet weak var tamagochiDescriptionLabelOutlet: UILabel!
    @IBOutlet weak var popupImageViewOutlet: UIImageView!
    @IBOutlet weak var popupLineOutlet: UIView!
    @IBOutlet weak var popupImageNameBackViewOutlet: UIView!
    @IBOutlet weak var popupImageNameOutlet: UILabel!
    
    var getClickedTamagochiImage: UIImage?
    var getClickedImageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // MARK: - popupView 전체화면
        popupBackView.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255,  alpha: 1)
        popupBackView.clipsToBounds = true
        popupBackView.layer.cornerRadius = 6
        
        // MARK: - popupView 다마고치 이미지
        
        popupImageViewOutlet.image = getClickedTamagochiImage == nil ? UIImage(systemName: "xmark") : getClickedTamagochiImage //클릭된 이미지 값 전달 받는 곳
        
        // MARK: - popupView 다마고치 이름 backView
        popupImageNameBackViewOutlet.backgroundColor = UIColor(red: 245/255, green: 252/255, blue: 252/255,  alpha: 1)
        popupImageNameBackViewOutlet.layer.borderColor = UIColor.black.cgColor
        popupImageNameBackViewOutlet.layer.borderWidth = 1
        popupImageNameBackViewOutlet.clipsToBounds = true
        popupImageNameBackViewOutlet.layer.cornerRadius = 6
        
        // MARK: - popupView 다마고치 이름
        popupImageNameOutlet.text = getClickedImageName == nil ? "이름모름" : getClickedImageName //선택된 다마고치의 이름 값 전달 받는 곳
        popupImageNameOutlet.font = UIFont.boldSystemFont(ofSize: 14)
        popupImageNameOutlet.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)

        // MARK: - popupView 구분선
        popupLineOutlet.backgroundColor = UIColor(red:  77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        // MARK: - popupView 다마고치 설명
        tamagochiDescriptionLabelOutlet.font = UIFont.systemFont(ofSize: 14)
        tamagochiDescriptionLabelOutlet.numberOfLines = 0
        tamagochiDescriptionLabelOutlet.text =
        
        """
저는 \(getClickedImageName ?? "준비중") 입니다. 키는 2cm
몸무게는 150이에요.
성격은 소심하지만 마음은 따듯해요.
열심히 잘 먹고 잘 클 자신은 있답니다.
반가워요 주인님!!!
"""
        tamagochiDescriptionLabelOutlet.font = UIFont.boldSystemFont(ofSize: 14)
        tamagochiDescriptionLabelOutlet.textColor = UIColor(red: 77/255, green: 106/255, blue: 120/255, alpha: 1)
        
        
        
    }
    
    @IBAction func popupCancelButtonAction(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    
    @IBAction func popupStartButtonAction(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let nav = UINavigationController(rootViewController: vc)
        
        nav.modalPresentationStyle = .fullScreen
        
        
        self.present(nav, animated: false)
    }
    
    
    
    

}
