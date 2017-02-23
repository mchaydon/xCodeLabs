//
//  ViewController.swift
//  Lesson09Assignment
//
//  Created by bitstudent on 2/21/17.
//  Copyright © 2017 bitstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var alphaValueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var redToggle: UISwitch!
    @IBOutlet weak var greenToggle: UISwitch!
    @IBOutlet weak var blueToggle: UISwitch!
    var oldRed = 0.00
    var oldGreen = 0.00
    var oldBlue = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.layer.cornerRadius = 10
        colorView.layer.borderColor = UIColor.black.cgColor
        colorView.layer.borderWidth = 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alphaSlider(_ sender: UISlider) {
        colorView.alpha = CGFloat(sender.value)
        alphaValueLabel.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        self.setColor()
        redValue.text = String(format: "%.2f", sender.value)
        
    }
   
    @IBAction func greenSlider(_ sender: UISlider) {
        self.setColor()
        greenValue.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        self.setColor()
        blueValue.text = String(format: "%.2f", sender.value)
    }
    @IBAction func redToggle(_ sender: UISwitch) {
        if sender.isOn
        {
            self.redSlider.value = Float(oldRed)
            self.setColor()
            self.redValue.text = String(format: "%.2f", oldRed)
            self.redSlider.isEnabled = true
        }
        else
        {
            oldRed = Double(self.redSlider.value)
            self.redSlider.value = 0.00
            self.setColor()
            self.redSlider.isEnabled = false
            self.redValue.text = "0.00"
        }
    }
    
    @IBAction func greenToggle(_ sender: UISwitch) {
        if sender.isOn
        {
            self.greenSlider.value = Float(oldGreen)
            self.setColor()
            self.greenValue.text = String(format: "%.2f", oldGreen)
            self.greenSlider.isEnabled = true
        }
        else
        {
            oldGreen = Double(self.greenSlider.value)
            self.greenSlider.value = 0.00
            self.setColor()
            self.greenSlider.isEnabled = false
            self.greenValue.text = "0.00"
        }
    }
    
    @IBAction func blueToggle(_ sender: UISwitch) {
        if sender.isOn
        {
            self.blueSlider.value = Float(oldBlue)
            self.setColor()
            self.blueValue.text = String(format: "%.2f", oldBlue)
            self.blueSlider.isEnabled = true
        }
        else
        {
            oldBlue = Double(self.blueSlider.value)
            self.blueSlider.value = 0.00
            self.setColor()
            self.blueSlider.isEnabled = false
            self.blueValue.text = "0.00"
        }

    }
    @IBAction func resetButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Reset Controls?", message: "Tap OK to reset the controls to defaults ", preferredStyle: .alert);
        let OKAction = UIAlertAction(title: "OK", style: .default)
        {
            (action) in
            self.colorView.alpha = 1.00
            self.alphaSlider.value = 1.00
            self.alphaValueLabel.text = "1.00"
            self.redSlider.value = 0.00
            self.redSlider.isEnabled = true
            self.redValue.text = "0.00"
            self.redToggle.isOn = true
            self.greenSlider.value = 0.00
            self.greenSlider.isEnabled = true
            self.greenValue.text = "0.00"
            self.greenToggle.isOn = true
            self.blueSlider.value = 0.00
            self.blueSlider.isEnabled = true
            self.blueValue.text = "0.00"
            self.blueToggle.isOn = true
            self.setColor()
        }
        alert.addAction(OKAction)
        
        let CancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(CancelAction)
        self.present(alert, animated: true)
    }
    
    func setColor()
    {
        colorView.backgroundColor = UIColor(red: CGFloat(self.redSlider.value), green: CGFloat(self.greenSlider.value), blue: CGFloat(self.blueSlider.value), alpha: CGFloat(self.alphaSlider.value))
    }
    
}

