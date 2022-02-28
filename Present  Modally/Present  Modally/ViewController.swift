//
//  ViewController.swift
//  Present  Modally
//
//  Created by Pınar Macit on 23.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
//kodlama ile sayfalar arası gecis yapıldı.
    @IBAction func goto2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2 // downcasting yapıldı.
        
        self.present(gidilecekViewController,animated: true,completion: nil)
        
    }
    
}

