//
//  ViewController.swift
//  lab2
//
//  Created by Kateryna Kononenko on 2/1/17.
//  Copyright © 2017 Kateryna Kononenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    var dog : Pets!
    var cat : Pets!
    var bunny : Pets!
    var fish : Pets!
    var bird : Pets!
    var pokemon : Pets!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dog = Pets(which: .dog, color :UIColor.red, img: #imageLiteral(resourceName: "dog"), barcol:UIColor.red, img2: #imageLiteral(resourceName: "dog"))
        bird = Pets(which: .bird, color :UIColor.yellow, img: #imageLiteral(resourceName: "bird"), barcol: UIColor.yellow, img2: #imageLiteral(resourceName: "bird") )
        cat = Pets(which: .cat, color :UIColor.blue, img: #imageLiteral(resourceName: "cat"), barcol: UIColor.blue, img2: #imageLiteral(resourceName: "cat"))
        fish = Pets(which: .fish, color :UIColor.purple, img: #imageLiteral(resourceName: "fish"), barcol: UIColor.purple, img2: #imageLiteral(resourceName: "fish") )
        bunny = Pets(which: .bunny, color :UIColor.green, img: #imageLiteral(resourceName: "bunny"), barcol: UIColor.green, img2: #imageLiteral(resourceName: "bunny"))
        pokemon = Pets(which: .pokemon, color :UIColor.black, img: #imageLiteral(resourceName: "charmander"), barcol: UIColor.black, img2: #imageLiteral(resourceName: "charizard"))
        foodView.color = UIColor.black
        happinessView.color = UIColor.black
        
        currentPet = dog
        
        
        
    }
    @IBOutlet weak var petimage: UIImageView!
    
    @IBOutlet weak var backColor: UIView!
    @IBAction func dogPressed(_ sender: Any) {
        currentPet = dog
        updateView()
    }
    @IBAction func catPressed(_ sender: Any) {
        currentPet = cat
        updateView()
    }
    @IBAction func birdPressed(_ sender: UIButton) {
        currentPet = bird
        updateView()
    }
    @IBAction func bunnyPressed(_ sender: Any) {
        currentPet = bunny
        updateView()
    }
    @IBAction func fishPressed(_ sender: Any) {
        currentPet = fish
        updateView()
    }

    @IBAction func pokemonPressed(_ sender: Any) {
        currentPet = pokemon
        updateView()
    }
    
    @IBOutlet weak var foodView: DisplayView!
    
    var currentPet:Pets!{
        didSet{
            updateView()
        }
    }
    
    
    @IBOutlet weak var happinessView: DisplayView!
    
    
    @IBAction func playPressed(_ sender: Any) {
        currentPet.play()
        updateView()
    }
    
 
    @IBAction func feedPressed(_ sender: Any) {
        currentPet.feed()
        updateView()
    }
    
    @IBOutlet weak var happyTimes: UILabel!
    
    @IBOutlet weak var foodTimes: UILabel!
   
  
    
    private func updateView() {
        
        happyTimes.text = String(currentPet.numplay)
        foodTimes.text = String(currentPet.numfood)
        
        let foodViewValue = Double(currentPet.foodLevel)/10
        
     
        
        foodView.animateValue(to: CGFloat(foodViewValue))
        
        let happinessViewValue = Double(currentPet.happinessLevel)/10
        
        happinessView.animateValue(to: CGFloat(happinessViewValue))
        petimage.image = currentPet.image
        
        foodView.color = currentPet.bar
        happinessView.color = currentPet.bar
        backColor.backgroundColor = currentPet.back
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
