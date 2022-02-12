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
        
      /*  let alert = UIAlertController(title: "Error", message:"Username not found!", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // button clicked.
            print("button clicked.")
        }
        
        alert.addAction(okButton)
        
        self.present(alert, animated: true, completion: nil) */
        
        if(usernameText.text == ""){
            
          /*  let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(okButton)
            
            //alerti ekranda göstermek, tamamlamak için.
            self.present(alert, animated: true, completion: nil) */
            
            makeAlert(titleInput: "Error", messageInput: "Username not found!")

        
        }
        
        else if(passwordText.text == ""){
            
            makeAlert(titleInput: "Error", messageInput: "Password not found!")

        }
        
        else if (passwordText.text != password2Text.text){
        
            makeAlert(titleInput: "Error", messageInput: "Passwords do not match!")

        }
        
        else {
            makeAlert(titleInput: "Success", messageInput: "User OK!")
        }
        
    }
    
    func makeAlert(titleInput : String, messageInput: String ){
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(okButton)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

