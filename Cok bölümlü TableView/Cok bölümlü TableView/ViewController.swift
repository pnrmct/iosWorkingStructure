//
//  ViewController.swift
//  Cok bölümlü TableView
//
//  Created by Pınar Macit on 5.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var bolumler = ["Meyveler","Renkler","Mevsimler"]
    
    var bolumVerileri = [["Elma","Çilek","Kivi"],["Kırmızı","Mavi","Yeşil"],["Yaz","Kış"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return bolumler.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bolumVerileri[section].count // Hangi bölüm index olarak veriliyor.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return bolumler[section]
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi", for: indexPath)
        
        cell.textLabel?.text = bolumVerileri[indexPath.section][indexPath.row] // önce bölüm daha sonra index'i yazdırdık
        
        return cell
        
    }
    //Hangi bölümden hangi veri seçildiğini gösteriyor.
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(bolumler[indexPath.section]) bölümünden \(bolumVerileri[indexPath.section][indexPath.row]) seçildi")
    }

}
