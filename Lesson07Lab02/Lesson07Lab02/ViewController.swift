//
//  ViewController.swift
//  Lesson07Lab02
//
//  Created by bitstudent on 2/9/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
    {
    var uiColorArray: [UIColor] = [UIColor.red, UIColor.green, UIColor.blue]
    

    @IBAction func changeColor(_ sender: UISegmentedControl)
    {
        self.view.backgroundColor = uiColorArray[sender.selectedSegmentIndex]
        //switch sender.selectedSegmentIndex{
        //    case 0 :
        //        self.view.backgroundColor = UIColor.red
        //    case 1:
        //        self.view.backgroundColor = UIColor.green
        //    case 2:
        //        self.view.backgroundColor = UIColor.blue
        //    default:
        //        self.view.backgroundColor = nil
        //}
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

