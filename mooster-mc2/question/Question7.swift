//
//  Question7.swift
//  Mooster
//
//  Created by Andrew Novansky Ignatius on 25/05/20.
//  Copyright © 2020 Andrew Novansky Ignatius. All rights reserved.
//

import UIKit

class Question7: UIViewController {
    @IBOutlet var imageBtn: [UIButton]!
    
    var selectedAct = ""
    var pertanyaan1 = ""
    var pertanyaan2 = ""
    var pertanyaan3 = ""
    var pertanyaan4 = ""
    var pertanyaan5 = ""
    var pertanyaan6 = ""
    var pertanyaan7 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedAct, pertanyaan1, pertanyaan2, pertanyaan3, pertanyaan4, pertanyaan5, pertanyaan6, pertanyaan7)
        roundedCorner()
    }
    
    func roundedCorner(){
        for button in imageBtn{
            button.layer.cornerRadius = 20
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 3, height: 3)
            button.layer.shadowOpacity = 0.5
        }
    }
    
    @IBAction func ButtonDelete(_ sender: Any) {
        pertanyaan7 = "delete"
    }
    @IBAction func ButtonNotRead(_ sender: Any) {
        pertanyaan7 = "notread"
    }
    @IBAction func ButtonSave(_ sender: Any) {
        pertanyaan7 = "save"
    }

}
