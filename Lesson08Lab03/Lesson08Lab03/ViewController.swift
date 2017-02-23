//
//  ViewController.swift
//  Lesson08Lab03
//
//  Created by bitstudent on 2/14/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var roundedButtons: [UIButton]!
    //@IBOutlet weak var roundedButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for roundedButton in self.roundedButtons
        {
            roundedButton.layer.cornerRadius = 12
        }
        //self.roundedButton.layer.cornerRadius = 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

