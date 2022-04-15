//
//  ViewController.swift
//  UserDefault Calismasi
//
//  Created by Pınar Macit on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let d = UserDefaults.standard
        
        d.set("Ahmet", forKey: "ad")
        d.set(18, forKey: "yas")
        d.set(1.77, forKey: "boy")
        d.set(true, forKey: "medeniDurum")
        
        
        let arkadasListesi = ["ali","veysel","ece"]
        
        
        d.set(arkadasListesi, forKey: "liste")
        
        let sehirListesi:[String:String] = ["16":"Bursa","34":"İstanbul"]
        d.set(sehirListesi, forKey: "dict")
        //Veri okuma
        let ad = d.string(forKey: "ad") ?? "isim yok"
        let yas = d.integer(forKey: "yas")
        let boy = d.double(forKey: "boy")
        let medeniDurum = d.bool(forKey: "medeniDurum")
        
        print(ad)
        print(yas)
        print(boy)
        print(medeniDurum)
        
        
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()
        print(liste[0])
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        
        print(dict["16"]!)
        
        d.removeObject(forKey: "ad")
        let adx = d.string(forKey: "ad") ?? "isim yok"
        print(adx)
        
        d.set("yeni Ahmet", forKey: "ad")
        let ady = d.string(forKey: "ad") ?? "isim yok"
        print(ady)
    }


}

