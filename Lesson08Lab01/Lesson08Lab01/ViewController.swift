//
//  ViewController.swift
//  Lesson08Lab01
//
//  Created by bitstudent on 2/14/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subView: UIView!
    
    @IBAction func toggleHideSwitch(_ sender: UISwitch) {
        self.subView.isHidden = sender.isOn
    }
    
    @IBAction func slideAlpha(_ sender: UISlider) {
        self.subView.alpha = CGFloat(sender.value)
    }
    
    @IBAction func slideWidth(_ sender: UISlider) {
        self.subView.frame.size.width = CGFloat(sender.value)
        
    }
    
    @IBAction func slideHeight(_ sender: UISlider) {
        self.subView.frame.size.height = CGFloat(sender.value)
    }
    
    @IBAction func slideX(_ sender: UISlider) {
        self.subView.frame.origin.x = CGFloat(sender.value)
    }
    
    @IBAction func slideY(_ sender: UISlider) {
        self.subView.frame.origin.y = CGFloat(sender.value)
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

