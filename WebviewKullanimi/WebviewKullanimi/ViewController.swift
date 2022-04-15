//
//  ViewController.swift
//  WebviewKullanimi
//
//  Created by Pınar Macit on 2.03.2022.
//

import UIKit
import WebKit // webkit metodunun çalışabilmesi için WebKit kütüphanesini import ettik.

class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //Sayfa yüklendiği anda web sitenin açılması için bu alana kodlama yapıyoruz.
        
        let url = URL(string: "https://gelecegiyazanlar.turkcell.com.tr/")!
        
        webview.load(URLRequest(url: url)) // yükleme işlemi 
    }


}

