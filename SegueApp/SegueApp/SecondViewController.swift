//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Nisa Nur Efendioğlu on 8.02.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
        
    }
    

}
