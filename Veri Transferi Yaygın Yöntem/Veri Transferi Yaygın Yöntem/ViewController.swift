//
//  ViewController.swift
//  Veri Transferi Yaygın Yöntem
//
//  Created by Pınar Macit on 27.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func gonderB(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text!
        
        performSegue(withIdentifier: "aTob", sender: alinanVeri)
    }
    @IBAction func gonderC(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text!
        
        performSegue(withIdentifier: "aToc", sender: alinanVeri)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        
        if segue.identifier == "aTob" {
            print("a dan b ye geçiş oldu")
            // veriyi alırken string dönüşümü yaptık
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! ViewControllerB
                gidilecekVC.mesajB = veri
            }
            
        }
        if segue.identifier == "aToc" {
            print("a dan c ye geçiş oldu")
            
            if let veri = sender as? String {
                let gidilecekVC = segue.destination as! ViewControllerC
                gidilecekVC.mesajC = veri
            }
        }
    }
}

