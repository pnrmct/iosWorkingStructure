//
//  ViewController.swift
//  IOS Yasam Dongusu Senoryalari
//
//  Created by Pınar Macit on 28.02.2022.
//

import UIKit

class ViewController: UIViewController {
    //program çalıştığında bir kez çalışır.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad çalıştı")
    }
    //Ekran arayüzü görünecekse çalışır
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear çalıştı")
    }
    //Ekran kullanıcıya göründüğü an da çalışır.
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear çalıştı")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear çalıştı")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear çalıştı")
    }
}

