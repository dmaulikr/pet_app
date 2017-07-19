//
//  pets.swift
//  lab2
//
//  Created by Kateryna Kononenko on 2/2/17.
//  Copyright © 2017 Kateryna Kononenko. All rights reserved.
//

import Foundation
import UIKit

class Pets {
    
    enum ChosenPet{
        case bunny
        case fish
        case dog
        case cat
        case bird
        case pokemon
    }
    

private (set) var  happinessLevel: Int
private (set) var  foodLevel: Int
private (set) var  back: UIColor
private (set) var  image: UIImage
private (set) var bar: UIColor
    private (set) var image2: UIImage

  
    

var type: ChosenPet

private (set) var numfood = 0
private (set) var numplay = 0

func feed(){
    if(foodLevel > 9) {
        foodLevel = 10
        self.image = image2
    } else if (foodLevel < 0){
        foodLevel = 0
    } else {
        foodLevel += 1
        numfood += 1
    }
    
}

func play(){
    
        if(happinessLevel > 9) {
            happinessLevel = 10
            self.image = image2
        } else if (happinessLevel < 0){
            happinessLevel = 0
        } else {
            foodLevel -= 1
            happinessLevel += 1
            numplay += 1
        
    }
}
  


    init (which: ChosenPet, color: UIColor, img: UIImage, barcol : UIColor, img2: UIImage) {
    self.type = which
    self.back = color
    self.image = img
    self.bar = barcol
    self.image2 = img2
    foodLevel = 0
    happinessLevel = 0
    
}

}
