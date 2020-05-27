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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "7toResult" {
            if let destination = segue.destination as? ResultVC {
                destination.selectedAct = self.selectedAct
//                destination.pertanyaan1 = self.pertanyaan1
//                destination.pertanyaan2 = self.pertanyaan2
                destination.pertanyaan3 = self.pertanyaan3
                destination.pertanyaan4 = self.pertanyaan4
//                destination.pertanyaan5 = self.pertanyaan5
                destination.pertanyaan6 = self.pertanyaan6
//                destination.pertanyaan7 = self.pertanyaan7
              
            }
        }
    }
}
