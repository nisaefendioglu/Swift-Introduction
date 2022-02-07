//
//  ViewController.swift
//  Design with code
//
//  Created by Nisa Nur Efendioğlu on 7.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
       
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width*0.5 - width*0.8/2, y: height*0.5 - 50/2 , width: width*0.80, height: 50)
        view.addSubview(myLabel)
        
        
        let myButton = UIButton()
        myButton.setTitle("Hello World!", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.systemPink, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width*0.5-100, y: height*0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        //kullanıcı butona tıklayınca ne olacağını belirleyen target.
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        
    }

    //objektif c şeklindeyken target kısmına alabildik #selector ile objecktif c için ise func başına -> objc
   @objc func myAction(){
       myLabel.text = "tapped!"
    }

}

