//
//  ViewController.swift
//  Basit Table View
//
//  Created by Pınar Macit on 4.03.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    var ulkeler:[String] = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ulkeler = ["Türkiye","Almanya","Japonya","İtalya","Fransa","Mısır"]
        tableview.delegate = self
        tableview.dataSource = self
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "hucreadi", for: indexPath) //indexpath bize hangi satırda olduğumuzun bilgisini veriyor. Hangi hücreye yazılacak
        
        cell.textLabel?.text = ulkeler[indexPath.row] // cell üzerindeki label'a hangi veri yazılacak bilgisini girdik. Veriyi de satır sayısıyla belirttik
        return cell
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath:indexPath) {
        print("Seçilen Ülke : \(ulkeler[indexPath.row])")
    }
    
}

/*
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "hucreadi", for: indexPath) //indexpath bize hangi satırda olduğumuzun bilgisini veriyor. Hangi hücreye yazılacak
        
        cell.textLabel?.text = ulkeler[indexPath.row] // cell üzerindeki label'a hangi veri yazılacak bilgisini girdik. Veriyi de satır sayısıyla belirttik
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seçilen Ülke : \(ulkeler[indexPath.row])")
    }
}

*/
