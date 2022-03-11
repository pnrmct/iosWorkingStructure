//
//  ViewController.swift
//  PickerView Kullanımı
//
//  Created by Pınar Macit on 4.03.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    var ulkeler = [String]()
    
    var secilenUlke:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye", "Almanya","Japonya", "Rusya","İtalya"]
        
        // Artık pickerView yukarıdaki delegete ve datasource metodlarını çalıştırır hale gelmiş oldu.
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelSonuc.text = ulkeler[row]
        
        secilenUlke = ulkeler[row]
    }
    
    
    
    @IBAction func goster(_ sender: Any) {
        print(secilenUlke!)
    }
    
}

