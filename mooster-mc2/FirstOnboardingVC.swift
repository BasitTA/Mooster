//
//  FirstOnboardingVC.swift
//  mooster-mc2
//
//  Created by Basit Tri Anggoro on 21/05/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class FirstOnboardingVC: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeLeftGesture))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        roundedCorner()
    }
    
    func roundedCorner(){
        nextButton.layer.cornerRadius = 10
        nextButton.layer.shadowColor = UIColor.black.cgColor
        nextButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        nextButton.layer.shadowOpacity = 0.5
    }
    
    @objc func swipeLeftGesture(){
        var vc: UIViewController
        vc = (self.storyboard?.instantiateViewController(withIdentifier: "pageTwo"))!
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func skipToMainPage(_ sender: UIButton) {
        var vc: UIViewController
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        vc = mainStoryboard.instantiateInitialViewController()!
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }
    
}
