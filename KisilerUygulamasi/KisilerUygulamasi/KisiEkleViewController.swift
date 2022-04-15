//
//  KisiEkleViewController.swift
//  KisilerUygulamasi
//
//  Created by Pınar Macit on 14.03.2022.
//

import UIKit

class KisiEkleViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var kisiAdTextField: UITextField!
    
    @IBOutlet weak var kisiTelTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ekle(_ sender: Any) {
        if let ad = kisiAdTextField.text, let tel = kisiTelTextField.text {
            
            let kisi = Kisiler(context: context)
            
            kisi.kisi_ad = ad
            kisi.kisi_tel = tel
            
            appDelegate.saveContext()
        }
    }
}
