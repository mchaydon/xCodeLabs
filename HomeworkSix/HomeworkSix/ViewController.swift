//
//  ViewController.swift
//  HomeworkSix
//
//  Created by bitstudent on 2/7/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lengthText: UITextField!
    @IBOutlet weak var widthText: UITextField!
    @IBOutlet weak var areaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateBtn(_ sender: Any) {
        if let length = Double(self.lengthText.text!), let width = Double(self.widthText.text!)
        {
            let area = length * width
            self.areaLabel.text = "The area is \(String(format:"%.1f", area))"
        }
        else
        {
            print("Check values and try again")
        }
    }


}

