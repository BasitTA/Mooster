//
//  Question3.swift
//  Mooster
//
//  Created by Andrew Novansky Ignatius on 25/05/20.
//  Copyright © 2020 Andrew Novansky Ignatius. All rights reserved.
//

import UIKit

class Question3: UIViewController {
    @IBOutlet var imageBtn: [UIButton]!
    
    var selectedAct = ""
    var pertanyaan1 = ""
    var pertanyaan2 = ""
    var pertanyaan3 = ""
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
    
    @IBAction func ButtonSweet(_ sender: Any) {
        pertanyaan3 = "sweet"
    }
    @IBAction func ButtonSour(_ sender: Any) {
        pertanyaan3 = "sour"
    }
    @IBAction func ButtonHot(_ sender: Any) {
        pertanyaan3 = "spicy"
    }
    @IBAction func ButtonSalt(_ sender: Any) {
        pertanyaan3 = "salty"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "3to4" {
            if let destination = segue.destination as? Question4 {
                destination.selectedAct = self.selectedAct
                destination.pertanyaan1 = self.pertanyaan1
                destination.pertanyaan2 = self.pertanyaan2
                destination.pertanyaan3 = self.pertanyaan3
              
            }
        }
    }

}
