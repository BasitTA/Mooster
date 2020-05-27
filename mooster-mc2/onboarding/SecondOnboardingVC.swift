//
//  SecondOnboardingVC.swift
//  mooster-mc2
//
//  Created by Basit Tri Anggoro on 21/05/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class SecondOnboardingVC: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeLeftGesture))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeRightGesture))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
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
        nextButton.layer.cornerRadius = 10
        nextButton.layer.shadowColor = UIColor.black.cgColor
        nextButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        nextButton.layer.shadowOpacity = 0.5
    }
    
    @objc func swipeLeftGesture(){
        var vc: UIViewController
        vc = (self.storyboard?.instantiateViewController(withIdentifier: "pageThree"))!
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func swipeRightGesture(){
        var vc: UIViewController
        vc = (self.storyboard?.instantiateViewController(withIdentifier: "pageOne"))!
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
