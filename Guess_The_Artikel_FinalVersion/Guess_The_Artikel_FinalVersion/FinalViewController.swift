//
//  FinalViewController.swift
//  Guess_The_Artikel_FinalVersion
//
//  Created by Süleyman Enes Gökkaya on 18.12.2021.
//

import UIKit

class FinalViewController: UIViewController {
    @IBOutlet weak var dogruSayisiLabel: UILabel!
    @IBOutlet weak var yanlisSayisiLabel: UILabel!
    var dogruSayisi = 0
    var yanlisSayisi = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        dogruSayisiLabel.text = "Doğru Sayısı:"+String(dogruSayisi)
        yanlisSayisiLabel.text = "Yanlış Sayısı:"+String(yanlisSayisi)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
