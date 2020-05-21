//
//  ThirdOnboardingVC.swift
//  mooster-mc2
//
//  Created by Basit Tri Anggoro on 21/05/20.
//  Copyright © 2020 Basit Tri Anggoro. All rights reserved.
//

import UIKit

class ThirdOnboardingVC: UIViewController {
    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeRightGesture))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        roundedCorner()
    }
    
    func roundedCorner(){
        getStartedButton.layer.cornerRadius = 10
        getStartedButton.layer.shadowColor = UIColor.black.cgColor
        getStartedButton.layer.shadowOffset = CGSize(width: 3, height: 3)
        getStartedButton.layer.shadowOpacity = 0.5
    }
    
    @objc func swipeRightGesture(){
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
