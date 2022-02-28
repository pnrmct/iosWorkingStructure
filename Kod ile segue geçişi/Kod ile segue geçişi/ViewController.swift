//
//  ViewController.swift
//  Kod ile segue geçişi
//
//  Created by Pınar Macit on 27.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goto2(_ sender: Any) {
        
        let nesne = Kisiler(kisiId: 212, kisiAd: "Pınar")
        
        performSegue(withIdentifier: "gofrom1to2", sender: nesne)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gelenVeri = sender as? Kisiler // kisiler classına döndürüyoruz
        
        print("Gelen veri : \(gelenVeri!.kisiId!) \(gelenVeri!.kisiAd!)")
        print("Geçiş : 1 den 2 ye geçiş")
    }
}

