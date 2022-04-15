//
//  ViewController.swift
//  Timer Uygulamasi
//
//  Created by Pınar Macit on 22.03.2022.
//

import UIKit

class ViewController: UIViewController {

    var sayici:Timer?
    var sayac1:Int = 1
    var sayac2:Int = 5
    @IBOutlet weak var cikti: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        cikti.text = ""
    }

    @IBAction func basla(_ sender: Any) {
        
        
        sayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(geriSay), userInfo: nil, repeats: true)
    }
    
   @objc func ileriSay() {
        
       cikti.text = String(sayac1)
       sayac1+=1
       
       if sayac1 > 6{
           sayici?.invalidate()
           cikti.text = "Süre Bitti"
           sayac1 = 1
       }
    }
    
    @objc func geriSay() {
         
        cikti.text = String(sayac2)
        sayac2-=1
        
        if sayac2 < 0 {
            sayici?.invalidate()
            cikti.text = "Süre Bitti"
            sayac2 = 5
        }
     }
}

