//
//  ViewController.swift
//  result page
//
//  Created by Gilbert Gozalie on 5/19/20.
//  Copyright © 2020 Gilbert Gozalie. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    var selectedAct: String = ""
    //variable jawaban
//  var pertanyaan1:String = "Spicy"
//  var pertanyaan2:String = "Spicy"
    var pertanyaan3:String = ""
    var pertanyaan4:String = ""
//  var pertanyaan5:String = "Spicy"
    var pertanyaan6:String = ""
//  var pertanyaan7:String = ""
    var timer:Int = 0
    @IBOutlet weak var ActivityImage1: UIImageView!//gambar
    @IBOutlet weak var duration: UILabel!//label durasi
    @IBOutlet weak var StartActivity: UIButton!// button start timer
    @IBOutlet weak var ActivityName: UILabel!// label nama activity
    @IBOutlet weak var activity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCorner()
        self.navigationItem.setHidesBackButton(true, animated: true)
        activity.text = selectedAct
        print(selectedAct, pertanyaan3, pertanyaan4, pertanyaan6)
        //kodingan buat hasil buku
        if selectedAct == "Book"{
            if pertanyaan6 == "red" {
                ActivityImage1.image = #imageLiteral(resourceName: "Horror")
                ActivityName.text = "Horror"//red
                spicy()
                adventurous()
            }
            else if pertanyaan6 == "blue" {
                ActivityImage1.image = #imageLiteral(resourceName: "comedy")
                ActivityName.text = "Humor"//blue, salty
                spicy()
                adventurous()
            }
            else if pertanyaan6 == "green" {
                ActivityImage1.image = #imageLiteral(resourceName: "Detective")
                ActivityName.text = "Mystery"//green
                spicy()
                adventurous()
            }
            else if pertanyaan6 == "black" {
                ActivityImage1.image = #imageLiteral(resourceName: "non-fiction")
                ActivityName.text = "Non Fiction"//black
                spicy()
                adventurous()
            }
            
            duration.text="1 Hour 30 minutes"
            timer = 5400
        }
        //kodingan buat hasil game
        else if selectedAct == "Games"{
            if pertanyaan6 == "red" {
                ActivityImage1.image = #imageLiteral(resourceName: "fps Ok")
                ActivityName.text = "FPS"//red
                spicy()
                adventurous()
            }
            else if pertanyaan6 == "blue" {
                ActivityImage1.image = #imageLiteral(resourceName: "racing")
                ActivityName.text = "Racing"//blue, salty
                spicy()
                adventurous()
            }
            else if pertanyaan6 == "green" {
                ActivityImage1.image = #imageLiteral(resourceName: "puzzle")
                ActivityName.text = "Puzzle"//green
                spicy()
                adventurous()
            }
            else if pertanyaan6 == "black" {
                ActivityImage1.image = #imageLiteral(resourceName: "Simulation")
                ActivityName.text = "Simulation"//black, rumah masih berantakan
                spicy()
                adventurous()
            }
            duration.text="2 Hours"
            timer = 7200
        }
        //kodingan buat hasil film
        else if selectedAct == "Movie"{
            if pertanyaan6 == "red" {
                ActivityImage1.image = #imageLiteral(resourceName: "Horror2")
                ActivityName.text = "Horror"//red
                spicy()
                adventurous()
            }
            else if pertanyaan6 == "blue" {
                ActivityImage1.image = #imageLiteral(resourceName: "Comedy")
                ActivityName.text = "Comedy"//blue
                spicy()
                adventurous()
            }
            else if pertanyaan6 == "green" {
                ActivityImage1.image = #imageLiteral(resourceName: "movie-genre-cinema-icons-of-action-drama-vector-17610058")
                ActivityName.text = "Historical"//green
                spicy()
                adventurous()
            }
            else if pertanyaan6 == "black" {
                ActivityImage1.image = #imageLiteral(resourceName: "Drama")
                ActivityName.text = "Drama"//black
                spicy()
                adventurous()
            }
            duration.text="1 Hour"
            timer = 3600
        }
    }
    
    //user select spicy
    func spicy(){
        if selectedAct == "Games" && pertanyaan3 == "spicy"{
            ActivityImage1.image = #imageLiteral(resourceName: "Sports")
            ActivityName.text = "Sports"//spicy
        }
        else if selectedAct == "Movie" && pertanyaan3 == "spicy"{
            ActivityImage1.image = #imageLiteral(resourceName: "romantic")
            ActivityName.text = "Romance"//spicy
        }
        else if selectedAct == "Book" && pertanyaan3 == "spicy"{
            ActivityImage1.image = #imageLiteral(resourceName: "Romance")
            ActivityName.text = "Romantic"//spicy
        }
    }
    
    //user select adventurous
    func adventurous(){
        if selectedAct == "Games" && pertanyaan4 == "adventurous"{
            ActivityImage1.image = #imageLiteral(resourceName: "Adventure2")
            ActivityName.text = "Adventure"
        }
        else if selectedAct == "Movie" && pertanyaan4 == "adventurous"{
            ActivityImage1.image = #imageLiteral(resourceName: "Fantasy")
            ActivityName.text = "Fantasy"
        }
        else if selectedAct == "Book" && pertanyaan4 == "adventurous"{
            ActivityImage1.image = #imageLiteral(resourceName: "Sci-fi")
            ActivityName.text = "Fiction"
        }
    }
    
    func roundedCorner(){
        //rounded image & shadow
        ActivityImage1.layer.cornerRadius = 20
        ActivityImage1.layer.shadowColor = UIColor.black.cgColor
        ActivityImage1.layer.shadowOffset = CGSize(width: 3, height: 3)
        ActivityImage1.layer.shadowOpacity = 0.5
        
        //rounded button & shadow
        StartActivity.layer.cornerRadius = 10
        StartActivity.layer.shadowColor = UIColor.black.cgColor
        StartActivity.layer.shadowOffset = CGSize(width: 3, height: 3)
        StartActivity.layer.shadowOpacity = 0.5
    }
    
    //segue ke page timer
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultToTimer" {
//            if let destination = segue.destination as? timer {
//                destination.timer = timer
//            }
        }
    }
    
}
