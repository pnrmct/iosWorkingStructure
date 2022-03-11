//
//  ViewController.swift
//  Date and Time Picker
//
//  Created by Pınar Macit on 4.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldTarih: UITextField!
    
    
    
    @IBOutlet weak var textfieldSaat: UITextField!
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        datePicker = UIDatePicker()//nesne
        datePicker?.datePickerMode = .date//tür
        if #available(iOS 13.4, *){
            datePicker?.preferredDatePickerStyle = .wheels//DatePicker görünüm kodlaması
        }
        textfieldTarih.inputView = datePicker // Textfield a tıknanıldığı zaman artık ilgili datePicker çalışacak.
        
        //TimePicker için olan kısım
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textfieldSaat.inputView = timePicker
        
        
        
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        //action kısmında #selector metodu ile bizim belirlediğim bir metodu tetikliyor.
        // valueChanged ise her değişiklik olduğunda metodu çalıştırması için kullandık.
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(self.dokunmaAlgilamaMetod))
        
        view.addGestureRecognizer(dokunmaAlgilama) // boş bir alana tıkladığımızda tarih kapatılacak
    }
    
   
        
        @objc func tarihGoster(datePicker:UIDatePicker){ // tetiklemek istediğimiz metod. Tarih bilgisini verecek bize.
            // @objc ise başka bir yerden tetiklendiğini gösterir.
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy"
            let alinanTarih = dateFormatter.string(from: datePicker.date)
            
            textfieldTarih.text = alinanTarih
            
            print(alinanTarih)//tarihsel bir veri alabiliyoruz.
            
          //  view.endEditing(true)
    }
    
    @objc func saatGoster(timePicker:UIDatePicker){ // tetiklemek istediğimiz metod. Tarih bilgisini verecek bize.
        // @objc ise başka bir yerden tetiklendiğini gösterir.
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        let alinanSaat = dateFormatter.string(from: timePicker.date)
        
        textfieldSaat.text = alinanSaat
}
        @objc func dokunmaAlgilamaMetod(){
            view.endEditing(true)// arayüzde klavye vb bir şey varsa kapatmak için
     
        }
    
    }




