//
//  ViewController.swift
//  Navigation Controller - Twitter Uygulaması
//
//  Created by Pınar Macit on 28.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let resim = UIImage(named: "twitterlogo")
        self.navigationItem.titleView = UIImageView(image: resim)
        
        
    }


}

