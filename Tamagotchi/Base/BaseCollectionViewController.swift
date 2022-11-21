//
//  BaseCollectionViewController.swift
//  Tamagotchi
//
//  Created by KYUNGSUP GO on 2022/11/20.
//

import UIKit
import SwiftAlertView

class BaseCollectionViewController: UICollectionViewController {
    
    var data = imageDataInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "다마고치 선택하기"
        setBasicBackgroundColor()
        setCollectionViewLayout(collectionView)
    }
    
    
    
    // MARK: -  cell item 갯수
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.imageDataset.count
    }
    
    
    // MARK: - cell 구성 설정
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BaseCollectionViewCell", for: indexPath) as? BaseCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.configureCell(cell, indexPath: indexPath)

        return cell
    }
    
    
    // MARK: - cell 클릭시 설정
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    
        // cell 클릭시 화면에 띄워줄 viewcontroller 설정
        let sb = UIStoryboard(name: "DetailPopupView", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "DetailPopupViewController") as! DetailPopupViewController
        vc.modalPresentationStyle = .overFullScreen
        
        // cell의 indexpath.item에 따라서 다마고치 이미지, 다마고치 이름 전달
        switch indexPath.item {
        case 0,1,2:
            vc.getClickedTamagochiImage = UIImage(named: data.imageBaseViewDataset[indexPath.item].tamagochiImageName)
            vc.getClickedImageName = data.imageBaseViewDataset[indexPath.item].tamagochiName
        default:
            vc.getClickedTamagochiImage = UIImage(named: data.imageBaseViewDataset[3].tamagochiImageName)
            vc.getClickedImageName = data.imageBaseViewDataset[3].tamagochiName
        }
        
        

        vc.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
        self.present(vc, animated: true)
        
        
    }
}

