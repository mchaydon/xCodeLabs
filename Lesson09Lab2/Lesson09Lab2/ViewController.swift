//
//  ViewController.swift
//  Lesson09Lab2
//
//  Created by bitstudent on 2/21/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sap: SimpleAudioPlayer!

    @IBOutlet weak var noteLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sap = SimpleAudioPlayer()
        sap.preload(file: "C", ofType: "caf")
        sap.preload(file: "D", ofType: "caf")
        sap.preload(file: "E", ofType: "caf")
        sap.preload(file: "F", ofType: "caf")
        sap.preload(file: "G", ofType: "caf")
        sap.preload(file: "beat", ofType: "caf")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapButton(_ sender: UIButton) {
        let note = sender.titleLabel?.text
        self.noteLabel.text = note!
        sap.playEffect(file: note!, ofType: "caf")
    }

    @IBAction func toggleBackground(_ sender: UISwitch) {
        if sender.isOn
        {
            sap.playBackground(file: "beat", ofType: "caf")
        }
        else
        {
            sap.stopBackground()
        }
    }
}

