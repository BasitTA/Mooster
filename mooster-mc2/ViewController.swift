//
//  ViewController.swift
//  mooster-mc2
//
//  Created by Basit Tri Anggoro on 18/05/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var gamesButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var quotesButton: UIButton!
    @IBOutlet var imageBtn: [UIButton]!
    
    var buttonHighlighted:Bool = false
    var favoriteAct:String = "games"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCorner()
    }
    // Set the shouldAutorotate to False
    override open var shouldAutorotate: Bool {
       return false
    }

    // Specify the orientation.
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
       return .portrait
    }
    
    func roundedCorner(){
        for button in imageBtn{
            button.imageView?.layer.cornerRadius = 20
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 3, height: 3)
            button.layer.shadowOpacity = 0.5
        }
        nextButton.layer.cornerRadius = 10
        nextButton.layer.shadowColor = UIColor.black.cgColor
        nextButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        nextButton.layer.shadowOpacity = 0.5
    }

    @IBAction func gamesBtnClicked(_ sender: UIButton) {
        self.favoriteAct = "games"
        DispatchQueue.main.async {
            if self.buttonHighlighted == false{
                sender.isHighlighted = true
                self.musicButton.isHighlighted = false
                self.quotesButton.isHighlighted = false
            }else{
                sender.isHighlighted = false
                self.buttonHighlighted = false
            }
         }
    }
    
    @IBAction func musicButtonClicked(_ sender: UIButton) {
        favoriteAct="music"
        DispatchQueue.main.async {
            if self.buttonHighlighted == false{
                sender.isHighlighted = true
                self.gamesButton.isHighlighted = false
                self.quotesButton.isHighlighted = false
            }else{
                sender.isHighlighted = false
                self.buttonHighlighted = false
            }
         }
        
    }
    
    @IBAction func quotesBtnClicked(_ sender: UIButton) {
        favoriteAct="quotes"
        DispatchQueue.main.async {
            if self.buttonHighlighted == false{
                sender.isHighlighted = true
                self.gamesButton.isHighlighted = false
                self.musicButton.isHighlighted = false
            }else{
                sender.isHighlighted = false
                self.buttonHighlighted = false
            }
         }
    }
        
    @IBAction func nextBtnClicked(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuestion1VC"{
            let destinationVC = segue.destination as! Question1
            destinationVC.selectedAct = favoriteAct
        }
    }
    
}

