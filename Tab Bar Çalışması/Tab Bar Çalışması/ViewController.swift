//
//  ViewController.swift
//  Tab Bar Çalışması
//
//  Created by Pınar Macit on 28.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var profilSayac = 0
    var isSayac = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func profilArttir(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            
            let profileTabBarItem = tabItems[0]
            
            profilSayac = profilSayac + 1
            
            profileTabBarItem.badgeColor = UIColor.purple
            profileTabBarItem.badgeValue = String(profilSayac)
        }
        
    }
    @IBAction func isArttir(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items {
            
            let isTabBarItem = tabItems[1]
            
            isSayac = isSayac + 1
            
            isTabBarItem.badgeColor = UIColor.red
            isTabBarItem.badgeValue = String(isSayac)
        }
    }
    
}

