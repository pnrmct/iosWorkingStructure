//
//  ViewController.swift
//  UserDefaultLogin Uygulamasi
//
//  Created by Pınar Macit on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfieldKullaniciAdi: UITextField!
    
    @IBOutlet weak var textfieldSifre: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && s != "bos" {
            performSegue(withIdentifier: "girisToanasayfa", sender: nil)
        }
    }

    @IBAction func girisYap(_ sender: Any) {
        
        
        if let ka = textfieldKullaniciAdi.text , let s = textfieldSifre.text {
            
            if ka == "admin" && s == "1234"{
               
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")
                performSegue(withIdentifier: "girisToanasayfa", sender: nil)
                
            }else{
                print("Hata Giriş")
            }
            
        }
    }
    override func viewWillAppear(_ animated: Bool) {
       navigationController?.isNavigationBarHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
}

