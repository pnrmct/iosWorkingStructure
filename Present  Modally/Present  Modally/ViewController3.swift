//
//  ViewController3.swift
//  Present  Modally
//
//  Created by Pınar Macit on 26.02.2022.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func goto1(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa1") as! ViewController // downcasting yapıldı.
        
        self.present(gidilecekViewController,animated: true,completion: nil)
    }
    @IBAction func goto2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2 // downcasting yapıldı.
        
        self.present(gidilecekViewController,animated: true,completion: nil)
    }
    
}
