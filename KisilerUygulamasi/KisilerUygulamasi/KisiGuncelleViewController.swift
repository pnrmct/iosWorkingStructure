//
//  KisiGuncelleViewController.swift
//  KisilerUygulamasi
//
//  Created by Pınar Macit on 14.03.2022.
//

import UIKit

class KisiGuncelleViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var kisiadTextField: UITextField!
    
    @IBOutlet weak var kisiTelTextField: UITextField!
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let k = kisi {
            kisiadTextField.text = k.kisi_ad
            kisiTelTextField.text = k.kisi_tel
        }
    }
    @IBAction func guncelle(_ sender: Any) {
        
        if let k = kisi, let ad = kisiadTextField.text, let tel = kisiTelTextField.text {
            
            let kisi = Kisiler(context: context)
            
            kisi.kisi_ad = ad
            kisi.kisi_tel = tel
            
            appDelegate.saveContext()
     }
    

   }
}
