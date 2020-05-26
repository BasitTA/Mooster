//
//  Question4.swift
//  Mooster
//
//  Created by Andrew Novansky Ignatius on 25/05/20.
//  Copyright © 2020 Andrew Novansky Ignatius. All rights reserved.
//

import UIKit

class Question4: UIViewController {
    @IBOutlet var imageBtn: [UIButton]!
    
    var selectedAct = ""
    var pertanyaan1 = ""
    var pertanyaan2 = ""
    var pertanyaan3 = ""
    var pertanyaan4 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCorner()
        // Do any additional setup after loading the view.
    }
    
    
    func roundedCorner(){
        for button in imageBtn{
            button.layer.cornerRadius = 20
            button.imageView?.layer.cornerRadius = 20
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 3, height: 3)
            button.layer.shadowOpacity = 0.5
        }
    }
    
    @IBAction func ButtonSlow(_ sender: Any) {
        pertanyaan4 = "slow"
    }
    @IBAction func ButtonFast(_ sender: Any) {
        pertanyaan4 = "fast"
    }
    @IBAction func ButtonAdventurous(_ sender: Any) {
        pertanyaan4 = "adventurous"
    }
    @IBAction func ButtonPicky(_ sender: Any) {
        pertanyaan4 = "picky"
    }
    @IBAction func ButtonDiscipline(_ sender: Any) {
        pertanyaan4 = "discipline"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "4to5" {
            if let destination = segue.destination as? Question5 {
                destination.selectedAct = self.selectedAct
                destination.pertanyaan1 = self.pertanyaan1
                destination.pertanyaan2 = self.pertanyaan2
                destination.pertanyaan3 = self.pertanyaan3
                destination.pertanyaan4 = self.pertanyaan4
              
            }
        }
    }

}
