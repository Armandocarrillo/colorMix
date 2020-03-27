//
//  ViewController.swift
//  colorMix
//
//  Created by Armando Carrillo on 26/03/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    @IBOutlet var redSwitch: UISwitch!
    @IBOutlet var greenSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.backgroundColor = .black
        
    }
    func updateColor (){
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn{
            //red = 1
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            //green = 1
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            //blue = 1
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red : red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        //colorView.backgroundColor = .red
       /*if sender.isOn{
            colorView.backgroundColor = .red
        } else {
            colorView.backgroundColor = .black
        }*/
        updateColor()}
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
}

