//
//  ViewController.swift
//  Kullanıcı Etkileşimi Çalışması
//
//  Created by Pınar Macit on 2.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func basitAllertGoster(_ sender: Any) {
        let allertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in // iptal metoduna tıkladığımız zaman artık burası çalışacak
        print("İptal Tıklandı")
        
        }
        
        allertController.addAction(iptalAction)
        
        
        let tamamAction = UIAlertAction(title: "Tamam ", style: .destructive){
            action in // Tamam metoduna tıkladığımız zaman artık burası çalışacak
        print("Tamam Tıklandı")
        
        }
        
        
        allertController.addAction(tamamAction)
        
        self.present(allertController,animated: true)
        
    }
    @IBAction func ozelAllertGoster(_ sender: Any) {
        
        let allertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        allertController.addTextField { textfield in
            textfield.placeholder = "Email" // Kullanıcıya mesaj vereceğimiz alan
            textfield.keyboardType = .emailAddress
        }
        allertController.addTextField { textfield in
            textfield.placeholder = "Şifre" // Kullanıcıya mesaj vereceğimiz alan
            textfield.isSecureTextEntry = true
            
        }
            
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive){
            action in // iptal metoduna tıkladığımız zaman artık burası çalışacak
        print("Kaydet Tıklandı")
            
        let alinanEmail = (allertController.textFields![0] as UITextField).text!
            
        let alinanSifre = (allertController.textFields![1] as UITextField).text!
                
            self.labelSonuc.text = "Email:\(alinanEmail) - \(alinanSifre)"// Bu sınıfın labelSonucunu kullandık.
        
        }
        
        allertController.addAction(kaydetAction)
        
        self.present(allertController,animated: true)
        
    }
    @IBAction func actionSheetGoster(_ sender: Any) {
        
        let allertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in // iptal metoduna tıkladığımız zaman artık burası çalışacak
        print("Action Sheet : İptal Tıklandı")
        
        }
        
        allertController.addAction(iptalAction)
        
        
        let tamamAction = UIAlertAction(title: "Tamam ", style: .destructive){
            action in // Tamam metoduna tıkladığımız zaman artık burası çalışacak
        print("Action Sheet : Tamam Tıklandı")
        
        }
        
        
        allertController.addAction(tamamAction)
        
        self.present(allertController,animated: true)
        
        
    }
    
}


