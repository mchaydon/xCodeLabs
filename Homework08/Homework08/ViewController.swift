//
//  ViewController.swift
//  Homework08
//
//  Created by bitstudent on 2/14/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let numberController = numberGuess()
    
    @IBOutlet weak var statusImage: UIImageView!
    @IBOutlet weak var guessBtn: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var guessText: UITextField!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    
    @IBAction func startOver(_ sender: UIButton) {
        numberController.generateNumber()
        guessCountLabel.text = "Guess Count: \(numberController.numOfGuesses)"
        self.statusImage.isHidden = true
        self.statusLabel.text = ""
        self.playButton.isHidden = true;
    }
    
    @IBAction func closeKeyboard(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func closeKeyboard2(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func guessBtn(_ sender: Any)
    {
        self.statusImage.isHidden = false
        self.view.endEditing(true)
        numberController.numOfGuesses += 1
        if Int(self.guessText.text!)! == numberController.randomNumber
        {
            self.statusLabel.text = "You guessed it!"
            self.statusImage.image = UIImage(named: "check")
            self.playButton.isHidden = false;
            
        }
        else if Int(guessText.text!)! > numberController.randomNumber
        {
            self.statusLabel.text = "Sorry, guess lower"
            self.statusImage.image = UIImage(named: "xlower")
            
        }
        else if Int(guessText.text!)! < numberController.randomNumber
        {
            self.statusLabel.text = "Sorry, guess higher"
            self.statusImage.image = UIImage(named: "xhigher")
        }
        guessCountLabel.text = "Guess Count: \(numberController.numOfGuesses)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(numberController.randomNumber)
        numberController.generateNumber()
        self.guessBtn.layer.cornerRadius = 10
        self.playButton.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

