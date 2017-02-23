//
//  ViewController.swift
//  Lesson07Lab1
//
//  Created by bitstudent on 2/9/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchStatusLabel: UILabel!
    @IBAction func toggleSwitch(_ sender: Any) {
        //forced downcast - Any is a generic object, UISwitch is specific
        let sw = sender as! UISwitch
        self.switchStatusLabel.text = sw.isOn ? "Switch is on" : "Switch is off"
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

