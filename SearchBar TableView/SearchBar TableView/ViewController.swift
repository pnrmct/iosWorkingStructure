//
//  ViewController.swift
//  SearchBar TableView
//
//  Created by Pınar Macit on 7.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = [String]()
    var aramaSonucuUlkeler:[String] = [String]()
    
    var aramaYapiliyorMu = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ulkeler = ["Türkiye","Almanya","İtalya","Rusya","Japonya","Amerika","Fransa","Güney Kore","Mısır"]
        
        searchBar.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if aramaYapiliyorMu {
            return aramaSonucuUlkeler.count
        }else{
            return ulkeler.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
        
        if aramaYapiliyorMu {
            cell.textLabel?.text = aramaSonucuUlkeler[indexPath.row]
        }else{
            cell.textLabel?.text = ulkeler[indexPath.row]
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if aramaYapiliyorMu {
            print("Seçilen ülke: \(aramaSonucuUlkeler[indexPath.row])")
        }else{
            print("Seçilen ülke: \(ulkeler[indexPath.row])")
        }
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("AramaSonucu : \(searchText)")
        
        aramaYapiliyorMu = true
        
        //Böyle bir ifade varsa arama ifadesini sildik
        if searchText == "" { //Arama Yapılmıyor.
            
            aramaYapiliyorMu = false
        }else{
            aramaYapiliyorMu = true
            
            aramaSonucuUlkeler = ulkeler.filter({$0.lowercased().contains(searchText.lowercased())})
        }
        
        tableView.reloadData() //Her çalıştığında extension metodları tekrardan çalışır ve arayüze yeni veriler yüklenir.
        
        
    }
    
}
