//
//  ViewController.swift
//  Lesson06Lab
//
//  Created by bitstudent on 2/7/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fahrenheitText: UITextField!
    @IBOutlet weak var celsiusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func convertBtnClick(_ sender: Any) {
        // verify input can be converted to a Double
        if let f = Double(self.fahrenheitText.text!)
        {
            // convert temp to celsius
            let c = (5.0 / 9.0) * (f - 32)
            //dispaly the result
            self.celsiusLabel.text = "\(String(format:"%.1f", c)) ˚C"
        }
        else
        {
            print("Error!")
        }
    }


}

