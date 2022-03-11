//
//  FilmHucre.swift
//  Detayli CollectionView
//
//  Created by Pınar Macit on 6.03.2022.
//

import UIKit

protocol FilmHucreProtocol { // Sepete ekle butonu için oluşturduğumuz protocol
    
    func sepeteEkle(indexPath:IndexPath)// O an da seçilen satırın indexPath'ini veriyor.
    
    
    
}

class FilmHucre: UICollectionViewCell {
    
    
    @IBOutlet weak var filmImageView: UIImageView!
    
    @IBOutlet weak var filmAdiLabel: UILabel!
    
    @IBOutlet weak var filmFiyatLabel: UILabel!
    //Yukarıdaki FilmHucreProtocol'üne erişebilmek için o sınıftan bir nesne oluşturmamız gerekiyor.
    var hucreProtocol:FilmHucreProtocol?
    var indexPath:IndexPath?
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        
        hucreProtocol?.sepeteEkle(indexPath:indexPath!)// Tıklanılan satırın bilgisini iletiyoruz.
    }
}
