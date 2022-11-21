//
//  SettingViewTableViewController.swift
//  Tamagotchi
//
//  Created by KYUNGSUP GO on 2022/11/21.
//

import UIKit

class SettingViewTableViewController: UITableViewController {

    let settingList = ["내 이름 설정하기", "다마고치 변경하기", "데이터 초기화"]
    let settingImageList = ["pencil", "moon.fill", "arrow.clockwise"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        navigationItem.title = "설정"
        
        
        setBasicBackgroundColor()


        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingViewTableViewCell", for: indexPath) as! SettingViewTableViewCell
        
        
        cell.configureCell(cell, indexPath: indexPath, settingList: settingList, settingImageList: settingImageList)
        
        
        
        
        return cell
        
    }
    
    

}
