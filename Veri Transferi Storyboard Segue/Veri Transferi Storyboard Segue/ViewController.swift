//
//  ViewController.swift
//  Veri Transferi Storyboard Segue
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
// geçişleri burada yapıyoruz.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // geçiş anlaşıldığı anda ekrana yazdırılacak mesajı textfield içerisinden alıyoruz.
        let gidecekMesaj = girdiAlani.text!
        
        if segue.identifier == "aTob" {
            print("a dan b ye geçiş")
        // gideceğimiz sınıftan nesne oluşturduk ve mesajımızın nereden geldiğini belirttik.
            let gidilecekVC = segue.destination as! ViewControllerB
            gidilecekVC.mesajB = gidecekMesaj
        }
        if segue.identifier == "aToc" {
            print("a dan c ye geçiş")
            let gidilecekVC = segue.destination as! ViewControllerC
            gidilecekVC.mesajC = gidecekMesaj
        }
    }
}

