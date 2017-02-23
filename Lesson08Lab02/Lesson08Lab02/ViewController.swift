//
//  ViewController.swift
//  Lesson08Lab02
//
//  Created by bitstudent on 2/14/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isGold = false
    
    @IBOutlet weak var heartIcon: UIImageView!
    @IBAction func touchHeart(_ sender: UIButton) {
        if isGold
        {
            self.heartIcon.image = UIImage.init(named: "heart-1")
            isGold = false
        }
        else
        {
            self.heartIcon.image = UIImage.init(named: "heart-2")
            isGold = true
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


}

