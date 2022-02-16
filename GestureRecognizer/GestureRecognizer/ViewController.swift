//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Nisa Nur Efendioğlu on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var isChange = true

    override func viewDidLoad() {
        super.viewDidLoad()

        imageview.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageview.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic(){
                
        if (isChange == true){
            
            imageview.image = UIImage(named: "2")
            myLabel.text = "Nisa 2"
            isChange = false
            
        }
        else {
            imageview.image = UIImage(named: "1")
            myLabel.text = "Nisa"
            isChange = true
        }
        print("tapped!")
        
       
        
    }


}

