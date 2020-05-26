//
//  Question2.swift
//  Mooster
//
//  Created by Andrew Novansky Ignatius on 25/05/20.
//  Copyright © 2020 Andrew Novansky Ignatius. All rights reserved.
//

import UIKit

class Question2: UIViewController {
    @IBOutlet var imageBtn: [UIButton]!
    
    var selectedAct = ""
    var pertanyaan1 = ""
    var pertanyaan2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCorner()
    }
    
    func roundedCorner(){
        for button in imageBtn{
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 3, height: 3)
            button.layer.shadowOpacity = 0.5
        }
    }

    @IBAction func ButtonSneakers(_ sender: Any) {
        pertanyaan2 = "sneakers"
    }
    @IBAction func ButtonBoots(_ sender: Any) {
        pertanyaan2 = "formal"
    }
    @IBAction func ButtonSandals(_ sender: Any) {
        pertanyaan2 = "sandal"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "2to3" {
            if let destination = segue.destination as? Question3 {
                destination.selectedAct = self.selectedAct
                destination.pertanyaan1 = self.pertanyaan1
                destination.pertanyaan2 = self.pertanyaan2
              
            }
        }
    }

}
