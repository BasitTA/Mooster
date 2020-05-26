//
//  Question1.swift
//  Mooster
//
//  Created by Andrew Novansky Ignatius on 25/05/20.
//  Copyright © 2020 Andrew Novansky Ignatius. All rights reserved.
//

import UIKit

class Question1: UIViewController {
    @IBOutlet var imageBtn: [UIButton]!
    
    var selectedAct = ""
    var pertanyaan1 = ""
    
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
    
    @IBAction func ButtonBeach(_ sender: Any) {
        pertanyaan1 = "beach"
    }
    
    @IBAction func ButtonMountain(_ sender: Any) {
        pertanyaan1 = "mountain"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "1to2" {
            if let destination = segue.destination as? Question2 {
                destination.selectedAct = self.selectedAct
                destination.pertanyaan1 = self.pertanyaan1
            }
        }
    }
}
