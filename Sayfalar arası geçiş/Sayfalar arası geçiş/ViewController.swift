//
//  ViewController.swift
//  Sayfalar arası geçiş
//
//  Created by Pınar Macit on 27.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gonder(_ sender: Any) {
       //önce sayfalar arası geçişi yapıyoruz.
         let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewController2
        //TEXTFİELD içerisinden aldığımız veriyi gönderme
        //girdiAlani.text dediğimiz zaman içerisine ne yazdıysak bize onu veriyor.
        
        let gonderilecekMesaj = girdiAlani.text
        
        gidilecekViewController.mesaj = gonderilecekMesaj!
        
        let gidecekKisi = Kisiler(kisiId: 121, kisiAd: "Pınar")
        
        gidilecekViewController.kisi = gidecekKisi
        
        //self.present(gidilecekViewController, animated: true, completion: nil)
        
        //Modal geçiş
        self.navigationController?.pushViewController(gidilecekViewController, animated: true)
        
    }
    
    
}

