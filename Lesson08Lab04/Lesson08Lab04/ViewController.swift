//
//  ViewController.swift
//  Lesson08Lab04
//
//  Created by bitstudent on 2/14/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapThat(_ sender: Any) {
        self.view.endEditing(true)
    }
    @IBAction func hideThat(_ sender: Any) {
        self.view.endEditing(true)
    }
    @IBAction func tapThat2(_ sender: Any) {
        self.view.endEditing(true)
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

