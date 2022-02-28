//
//  ViewControllerC.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Pınar Macit on 27.02.2022.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var etiketC: UILabel!
    var mesajC:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       etiketC.text = mesajC!

    }
    



}
