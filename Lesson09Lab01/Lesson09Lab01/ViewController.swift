//
//  ViewController.swift
//  Lesson09Lab01
//
//  Created by bitstudent on 2/21/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapThat(_ sender: Any) {
        //create alter controller
        let alert = UIAlertController(title: "Alert title", message: "Alert message", preferredStyle: .alert);
        //attach alert action to alter controller
        //UIAlertActionStyle: .default, .destructive, .cancel
        let OKAction = UIAlertAction(title: "OK", style: .default)
        {
            (action) in
            print("OK")
        }
        alert.addAction(OKAction)
        
        let CancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        {
            (action) in
            print("Cancel")
        }
        
        alert.addAction(CancelAction)
        //present alert controller
        self.present(alert, animated: true)
        {
            (action) in
            print("shown")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapThis(_ sender: Any)
    {
        //Create alert controller
        let alert = UIAlertController(title: "Favorite Color", message: "What is your favorite color?", preferredStyle: .actionSheet)
        
        //attach alert action to alert controller
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        {
            (action) in
            print("Cancel")
        }
        alert.addAction(cancelAction)
        
        let RedAction = UIAlertAction(title: "Red", style: .default)
        {
            (action) in
            print("Red")
            self.view.backgroundColor = UIColor.red
        }
        alert.addAction(RedAction)
        
        let GreenAction = UIAlertAction(title: "Green", style: .default)
        {
            (action) in
            print("Green")
            self.view.backgroundColor = UIColor.green
        }
        alert.addAction(GreenAction)
        
        //present the alert controller
        self.present(alert, animated: true)
        {
            (action) in
            print("shown")
        }
    }


}

