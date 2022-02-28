//
//  ViewController.swift
//  Navigation Controller Çalışması
//
//  Created by Pınar Macit on 27.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.title = "Başlık kod ile"
        //self.navigationItem.prompt = "Açıklama kod ile"
        
        //self.navigationItem.largeTitleDisplayMode = .never
        
        //Status bar ve promp rengini değiştirir.
       // navigationController?.navigationBar.barStyle = .black
        //Arkaplan rengi
        navigationController?.navigationBar.barTintColor = UIColor.blue
        // Yarısaydamlık özelliği
        navigationController?.navigationBar.isTranslucent = false
        // Başlık rengi
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor:UIColor.white]
        //Büyük başlık rengi
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor:UIColor.yellow]
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @IBAction func playTikla(_ sender: Any) {
        print("Play tıklandı")
    }
    
    @IBAction func segmentTiklandi(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("First tıklandı")
        case 1:
            print("Second tıklandı")
        default:
            break
        }
        
        
    }
    
}

