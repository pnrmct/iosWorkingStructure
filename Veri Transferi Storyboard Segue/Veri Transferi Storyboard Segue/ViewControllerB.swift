//
//  ViewControllerB.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Pınar Macit on 27.02.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiketB: UILabel!
    
    var mesajB:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiketB.text = mesajB!
    }
    



}
