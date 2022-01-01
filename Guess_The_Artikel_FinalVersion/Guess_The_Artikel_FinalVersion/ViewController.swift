//
//  ViewController.swift
//  Guess_The_Artikel_FinalVersion
//
//  Created by Süleyman Enes Gökkaya on 18.12.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func howtoTiklandi(_ sender: UIButton) {
        performSegue(withIdentifier: "toHowToVC", sender: nil)
    }
    @IBAction func baslatiklandi(_ sender: UIButton) {
        performSegue(withIdentifier: "toMainVC", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
}

