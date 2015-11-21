//
//  ViewController.swift
//  Mutliples
//
//  Created by DANIEL OREILLY on 11/17/15.
//  Copyright © 2015 DANIEL OREILLY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    var sum: Int = 0
    var total: Int = 0
    var inputValue: Int = 0
    var maxValue: Int = 0
    var attemp: Int = 0

    //Outlets
    
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var displayResult: UILabel!
    
    @IBOutlet weak var addBtn: UIButton!
    
    @IBOutlet weak var playBtn: UIButton!
    
    
    @IBAction func playGame(sender: AnyObject) {
        
        if displayResult.text != nil && displayResult.text != "" {
            
            inputText.hidden = true
            playBtn.hidden = true
        
            displayResult.hidden = false
            addBtn.hidden = false
        
            maxValue = Int(inputText.text!)!
            inputValue = Int(inputText.text!)!
            total = sum + inputValue
            attemp++
            updateDisplayLbl()
        
        }
    }
    
    @IBAction func calculateResult(sender: AnyObject) {
        
        if attemp < maxValue {
        
            sum = total
            total = inputValue + sum
        
            updateDisplayLbl()
            attemp++
    
        } else {
            restartGame()
        }
        
    }
    
    func restartGame() {
        
        sum = 0
        total = 0
        inputValue = 0
        maxValue = 0
        attemp = 0
        inputText.text = ""
        
        
        inputText.hidden = false
        playBtn.hidden = false
        
        displayResult.hidden = true
        addBtn.hidden = true
        
        
    }
    
    
    func updateDisplayLbl() {
        displayResult.text = "\(sum) + \(inputValue) = \(total)"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }


}

