//
//  ViewController.swift
//  Homework07
//
//  Created by bitstudent on 2/9/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var slide: UISlider!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        background.layer.zPosition = -1
        self.cLabel.text = "\(String(format: "%.0f", self.slide.value)) ˚C"
        self.fLabel.text = "\(String(format: "%.0f", self.slide.value * 9 / 5 + 32 )) ˚F"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func fSwitch(_ sender: Any) {
        let fSwich = sender as! UISwitch
        self.fLabel.isHidden = fSwich.isOn ? false : true
    }
    
    @IBAction func cSwitch(_ sender: Any) {
        let cSwich = sender as! UISwitch
        self.cLabel.isHidden = cSwich.isOn ? false : true
    }
    
    @IBAction func slider(_ sender: Any) {
        let tempSlider = sender as! UISlider
        self.cLabel.text = "\(String(format: "%.0f", tempSlider.value)) ˚C"
        self.fLabel.text = "\(String(format: "%.0f", tempSlider.value * 9 / 5 + 32 )) ˚F"
    }

    @IBAction func sliderToggle(_ sender: Any) {
        let toggle = sender as! UISegmentedControl
        switch toggle.selectedSegmentIndex
        {
        case 0:
            self.slide.isEnabled = true
        case 1:
            self.slide.isEnabled = false
        default:
            self.slide.isEnabled = true
        }
    }

}

