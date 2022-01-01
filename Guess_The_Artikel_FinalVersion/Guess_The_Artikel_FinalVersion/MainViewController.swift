//
//  MainViewController.swift
//  Guess_The_Artikel_FinalVersion
//
//  Created by Süleyman Enes Gökkaya on 18.12.2021.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var carpiGorseli: UIImageView!
    @IBOutlet weak var tikGorseli: UIImageView!
    @IBOutlet weak var yanlisSayisiLabel: UILabel!
    var die =  ["Tasche","Brille","Musik","Texte","Biografie","Lotto-Zahlen","Arbeitsanweisung","Pause","Artikel","Lampe","Katze"]
    var das = ["Radio","Buch","Magazin","Wörterbuch","Handy","Lernplakat","Papier","Whiteboard","Brötchen","Heft","Möppchen","Kind","Essen"]
    var der = ["Tisch","Stuhl","Füller","Bleistift","Radiergummi","Kuli","Becher","Stift","Computer","Pilot","Mann","Lehrer","Sohn","Löwe","Herr","Bruder"]
    var dogruSayisi = 0
    var randomListeNo:Int!
    var randomKelimeNo:Int!
    var dogruArtikel:String!
    var toplam:Int!
    var yanlisSayisi = 0
    var bilinenler:Array<String> = []
    var kelime:String!
    
  
    @IBOutlet weak var kelimeLabel: UILabel!
    @IBOutlet weak var dogruSayisiLabel: UILabel!
    func generateWord(){
        randomListeNo = Int.random(in: 1 ..< 4)
        
        if(randomListeNo==1){
           
            randomKelimeNo = Int.random(in: 0 ..< die.count)
            if bilinenler.contains(die[randomKelimeNo]){
                generateWord()
            }
            else{
                dogruArtikel = "die"
                kelime = die[randomKelimeNo]
                kelimeLabel.text! = kelime
            }
        
            
                
            
          
        }
        else if(randomListeNo==2){
            if(das.count>1){
                randomKelimeNo = Int.random(in: 0 ..< das.count)
                if bilinenler.contains(das[randomKelimeNo]){
                    generateWord()
                }
                else{
                    dogruArtikel = "das"
                    kelime = das[randomKelimeNo]
                    kelimeLabel.text! = kelime
                }
               
            }
            else{
                generateWord()
            }
            
        }
        else if(randomListeNo==3){
            if(der.count>1){
                randomKelimeNo = Int.random(in: 0 ..< der.count)
                if bilinenler.contains(der[randomKelimeNo]){
                    generateWord()
                }
                else{
                    dogruArtikel = "der"
                    kelime = der[randomKelimeNo]
                    kelimeLabel.text! = kelime
                }
            
            }
            else{
                generateWord()
            }
          
            
        }
        
    }

    @IBAction func dieTiklandi(_ sender: UIButton) {
        if(dogruArtikel == "die"){
            
            dogruSayisi+=1
       
            dogruSayisiLabel.text = String(dogruSayisi)
            carpiGorseli.isHidden=true
            tikGorseli.isHidden=false
       
            bilinenler.append(kelime)
            if(bilinenler.count==toplam){
                performSegue(withIdentifier: "toFinalVC", sender: nil)
            }
            else{
                generateWord()
            }
            
        }
        else{
            yanlisSayisi+=1
            yanlisSayisiLabel.text = String(yanlisSayisi)
            carpiGorseli.isHidden=false
            tikGorseli.isHidden=true
       
            generateWord()
        }
    }
    
    @IBAction func dasTiklandi(_ sender: UIButton) {
        if(dogruArtikel == "das"){
            
            dogruSayisi+=1
            dogruSayisiLabel.text = String(dogruSayisi)
            carpiGorseli.isHidden=true
            tikGorseli.isHidden=false
       
            bilinenler.append(kelime)
            if(bilinenler.count==toplam){
                performSegue(withIdentifier: "toFinalVC", sender: nil)
            }
            else
            {
                generateWord()
            }
            
        }
        else{
            yanlisSayisi+=1
            yanlisSayisiLabel.text = String(yanlisSayisi)
            carpiGorseli.isHidden=false
            tikGorseli.isHidden=true
       
            generateWord()
        }
    }
    
    
    
    @IBAction func derTiklandi(_ sender: UIButton) {
        if(dogruArtikel == "der"){
            
            dogruSayisi+=1
            dogruSayisiLabel.text = String(dogruSayisi)
            carpiGorseli.isHidden=true
            tikGorseli.isHidden=false
       
            bilinenler.append(kelime)
            
            if(bilinenler.count==toplam){
                performSegue(withIdentifier: "toFinalVC", sender: nil)
            }
            else{
                generateWord()
            }
            
            
        }
        else{
            yanlisSayisi+=1
            yanlisSayisiLabel.text = String(yanlisSayisi)
            carpiGorseli.isHidden=false
            tikGorseli.isHidden=true
       
            generateWord()
            
        }
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        toplam = die.count + der.count + das.count
        randomListeNo = Int.random(in: 1 ..< 4)
        if(randomListeNo==1){
            randomKelimeNo = Int.random(in: 0 ..< die.count)
            dogruArtikel = "die"
            kelime = die[randomKelimeNo]
            kelimeLabel.text! = kelime
        }
        else if(randomListeNo==2){
            randomKelimeNo = Int.random(in: 0 ..< das.count)
            dogruArtikel = "das"
            kelime = das[randomKelimeNo]
            kelimeLabel.text! = kelime
        }
        else if(randomListeNo==3){
            randomKelimeNo = Int.random(in: 0 ..< der.count)
            dogruArtikel = "der"
            kelime = der[randomKelimeNo]
            kelimeLabel.text! = kelime
            
        }
        

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toFinalVC"){
            let destinationVC = segue.destination as! FinalViewController
            destinationVC.dogruSayisi = dogruSayisi
            destinationVC.yanlisSayisi = yanlisSayisi
            
            
        }
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
