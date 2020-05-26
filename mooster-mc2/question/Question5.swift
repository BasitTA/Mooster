//
//  Question5.swift
//  Mooster
//
//  Created by Andrew Novansky Ignatius on 25/05/20.
//  Copyright © 2020 Andrew Novansky Ignatius. All rights reserved.
//

import UIKit

class Question5: UIViewController {
    @IBOutlet var imageBtn: [UIButton]!
    
    var selectedAct = ""
    var pertanyaan1 = ""
    var pertanyaan2 = ""
    var pertanyaan3 = ""
    var pertanyaan4 = ""
    var pertanyaan5 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCorner()
    }
    
    func roundedCorner(){
        for button in imageBtn{
            button.imageView?.layer.cornerRadius = 20
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 3, height: 3)
            button.layer.shadowOpacity = 0.5
        }
    }
    
    @IBAction func ButtonDreamer(_ sender: Any) {
        pertanyaan5 = "dreamer"
    }
    @IBAction func ButtonCrisisMaker(_ sender: Any) {
        pertanyaan5 = "crisismaker"
    }
    @IBAction func ButtonPerfectionist(_ sender: Any) {
        pertanyaan5 = "perfectionist"
    }
    @IBAction func ButtonDevier(_ sender: Any) {
        pertanyaan5 = "defier"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "5to6" {
            if let destination = segue.destination as? Question6 {
                destination.selectedAct = self.selectedAct
                destination.pertanyaan1 = self.pertanyaan1
                destination.pertanyaan2 = self.pertanyaan2
                destination.pertanyaan3 = self.pertanyaan3
                destination.pertanyaan4 = self.pertanyaan4
                destination.pertanyaan5 = self.pertanyaan5
              
            }
        }
    }

}
