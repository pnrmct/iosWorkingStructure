//
//  ViewController2.swift
//  Present  Modally
//
//  Created by Pınar Macit on 26.02.2022.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tiklanDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil) // Geri dönüş yapabilmesi için dismiss metodu ekledik.
    }
    @IBAction func goto3(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3 // downcasting yapıldı.
        
        self.present(gidilecekViewController,animated: true,completion: nil)
    }
    
}
