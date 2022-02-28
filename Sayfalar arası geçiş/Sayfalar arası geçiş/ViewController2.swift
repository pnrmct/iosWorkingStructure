//
//  ViewController2.swift
//  Sayfalar arası geçiş
//
//  Created by Pınar Macit on 27.02.2022.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var etiket: UILabel!
    
    var mesaj:String? //bir veri gönderdiğimiz zaman mesajın içinde veri olacak. Tek veri gönderme
    var kisi = Kisiler() // kişiler classından nesne oluşturduk
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Birden fazla veri transferi gerçekleştidik.
        print("Kisi id : \(kisi.kisiId!) Kişi ad : \(kisi.kisiAd!)")
        
        etiket.text = mesaj!


    }
    


}
