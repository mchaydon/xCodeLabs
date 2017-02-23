//
//  ViewController.swift
//  Lesson07Lab03
//
//  Created by bitstudent on 2/9/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func sideControl(_ sender: Any) {
        let control = sender as! UISlider
        let val = Int(control.value)
        self.label.text = "\(val)"
        stepper.value = Double(control.value)
        
    }
    
    @IBAction func stepControl(_ sender: Any) {
        let step = sender as! UIStepper
        let val = Int(step.value)
        self.label.text = "\(val)"
        slider.value = Float(step.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

