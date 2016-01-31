//
//  ViewController.swift
//  Multiples
//
//  Created by Mike on 1/30/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Variable
    let maxCount = 100
    var currentSum = 0
    var multiple = 0
    var newSum = 0
    
    //Outlets
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var multiples: UIImageView!
    @IBOutlet weak var multiplyByHowMuch: UITextField!
    @IBOutlet weak var equation: UILabel!
    @IBOutlet weak var multiplyButon: UIButton!
    
    
    //actions
    @IBAction func startGame(sender: UIButton!) {
        if multiplyByHowMuch.text != nil || multiplyByHowMuch.text != "" {
            playButton.hidden = true
            multiples.hidden = true
            multiplyByHowMuch.hidden = true
            multiplyButon.hidden = false
            equation.hidden = false
            
            
            multiple = Int(multiplyByHowMuch.text!)!
            print(multiple)
        }
    }

    
    @IBAction func multiply(sender: UIButton!) {
        if currentSum <= maxCount {
            newSum = currentSum + multiple
            equation.text = "\(currentSum) + \(multiple) = \(newSum)"
            currentSum = newSum
        }
    }
    
    
    
    

}

