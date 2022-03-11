//
//  ViewController.swift
//  Search Bar Kullanımı
//
//  Created by Pınar Macit on 7.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        self.searchBar.delegate = self
        
        searchBar.scopeButtonTitles = ["Birinci","İkinci"]
    }


}

extension ViewController:UISearchBarDelegate {
    //Arama yapıldığı anda sonucu döndüren metod
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonuç : \(searchText)")
    }
    
    //cancel butonunun işlevi
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel seçildi")

    }
    // Hangisinin seçildiğini anladığımız yapı
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("Birinci Seçildi")
        }
        if selectedScope == 1 {
            print("İkinci Seçildi")
        }
    }
    
}
