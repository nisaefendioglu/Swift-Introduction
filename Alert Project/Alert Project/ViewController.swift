//
//  ViewController.swift
//  Alert Project
//
//  Created by Nisa Nur Efendioğlu on 11.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        let alert = UIAlertController(title: "Error", message:"Username not found!", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // button clicked.
            print("button clicked.")
        }
        
        alert.addAction(okButton)
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
}

