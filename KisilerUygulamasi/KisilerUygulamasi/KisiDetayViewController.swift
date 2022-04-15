//
//  KisiDetayViewController.swift
//  KisilerUygulamasi
//
//  Created by Pınar Macit on 14.03.2022.
//

import UIKit

class KisiDetayViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var kisiAdLabel: UILabel!
    @IBOutlet weak var kisiTelLabel: UILabel!
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            kisiAdLabel.text = k.kisi_ad
            kisiAdLabel.text = k.kisi_tel
        }
    }
   
}
