//
//  ViewController.swift
//  creating a new page
//
//  Created by Pınar Macit on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    @IBOutlet var etiketler: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiket.text = "MERHABA" /* text metodu ile uygulama açıldığı zaman içerisine bir şey yüklüyoruz.
          */
    }

    @IBAction func tiklan(_ sender: Any) {
        etiket.text = "BUTTON TIKLANDI"
    }
    
}

