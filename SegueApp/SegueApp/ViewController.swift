//
//  ViewController.swift
//  SegueApp
//
//  Created by Nisa Nur Efendioğlu on 8.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func nextClicked(_ sender: Any) {
        
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)

    }
    
    //segue olmadan önce yapılacaklar.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toSecondVC"){
            //as - casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

