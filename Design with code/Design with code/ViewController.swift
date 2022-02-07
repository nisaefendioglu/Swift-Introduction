//
//  ViewController.swift
//  Design with code
//
//  Created by Nisa Nur Efendioğlu on 7.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: 100, y:100 , width: 100, height: 100)
        view.addSubview(myLabel)
    }


}

