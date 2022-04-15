//
//  ViewController2.swift
//  Notification Center Uygulama
//
//  Created by Pınar Macit on 21.03.2022.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func gonder(_ sender: Any) {
        
        let kisi = Kisiler(kisi_ad: "Ahmet", kisi_yas:18)
        NotificationCenter.default.post(name: .bildirimAdi, object: nil, userInfo: ["mesaj":"MErhaba","tarih":Date(),"nesne":kisi])
        
        dismiss(animated: true, completion: nil)
    }
    
}
