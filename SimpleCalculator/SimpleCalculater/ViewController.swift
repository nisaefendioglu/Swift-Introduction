//
//  ViewController.swift
//  SimpleCalculater
//
//  Created by Nisa Nur Efendioğlu on 12.01.2022.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    
    
    @IBOutlet weak var secondText: UITextField!
    
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func sumClicked(_ sender: Any) {
        
        //let firstNumber = Int(firstText.text!)! ilk ! -> veri gelecek, ikinci ! -> gelen veri int e çevrilebilir.
        
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                let result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
            
        
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                let result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    
    @IBAction func mutliplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                let result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                let result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
}

