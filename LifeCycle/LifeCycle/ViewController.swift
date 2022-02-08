//
//  ViewController.swift
//  LifeCycle
//
//  Created by Nisa Nur Efendioğlu on 8.02.2022.
//

import UIKit

class ViewController: UIViewController {

    //uygulama ilk açıldığında başlayan döngü.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Lifecycle
        print("viewDidLoad function called")
    }
    
    //kullanıcı görmek üzere. sayfalar arası geçiş.
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    //mevcut görünüm gitti. farklı bir sayfaya geçiş vs.
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWilDisappear function called")
    }
    
    //görünüm gözükecek.
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
       
    }
    
    //kullanıcı gördü.
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    
}

