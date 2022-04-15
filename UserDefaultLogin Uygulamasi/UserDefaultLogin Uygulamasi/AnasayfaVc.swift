//
//  AnasayfaVc.swift
//  UserDefaultLogin Uygulamasi
//
//  Created by Pınar Macit on 14.03.2022.
//

import UIKit

class AnasayfaVc: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = ka
        
        
        
    }
    
    @IBAction func cikisYap(_ sender: Any) {
        
        
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1)
    }
    
  
}
