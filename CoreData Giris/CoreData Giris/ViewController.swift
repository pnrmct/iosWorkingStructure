//
//  ViewController.swift
//  CoreData Giris
//
//  Created by Pınar Macit on 14.03.2022.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {

    
    let context = appDelegate.persistentContainer.viewContext
    
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       veriKaydi()
        
       //veriOkumaSiralama()
        
       //veriSil()
        
       // veriGüncelle()
        
       veriOkuma()
        
       //veriOkumaFiltreleme()
    }

    func veriKaydi() {
        
        let kisi = Kisiler(context: context)
        kisi.kisi_ad = "Pınar"
        kisi.kisi_yas = 16
        
        appDelegate.saveContext()
    }
    
    func veriOkuma (){
        do{
            kisilerListe = try context.fetch(Kisiler.fetchRequest())
            
        }catch{
            
            print("Veri okurken hata oldu")
        }
        for k in kisilerListe {
            print("Ad: \(k.kisi_ad!) - Yaş : \(k.kisi_yas)")
        }
    }
    func veriOkumaSiralama(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_yas), ascending: true)
        
        fetchRequest.sortDescriptors = [sort]
        
        
        
        do{
            kisilerListe = try context.fetch(fetchRequest)
            
        }catch{
            
            print("Veri okurken hata oldu")
        }
        for k in kisilerListe {
            print("Ad: \(k.kisi_ad!) - Yaş : \(k.kisi_yas)")
        }
    }
    func veriOkumaFiltreleme(){
        
        let fetchRequest:NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
        
        fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i", 12)
       
        do{
            kisilerListe = try context.fetch(fetchRequest)
            
        }catch{
            
            print("Veri okurken hata oldu")
        }
        for k in kisilerListe {
            print("Ad: \(k.kisi_ad!) - Yaş : \(k.kisi_yas)")
        }
    }
    
    func veriSil(){
        let kisi = kisilerListe[1]
        context.delete(kisi)
        appDelegate.saveContext()
    }
    
    func veriGüncelle(){
        
        let kisi = kisilerListe[1]
        kisi.kisi_ad = "yeni Ece"
        kisi.kisi_yas = 12
        
        appDelegate.saveContext()
    }
}

