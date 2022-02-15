//
//  ViewController.swift
//  BeautifulColorView_HW2.2
//
//  Created by Anastasia on 15.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    
    @IBOutlet var viewMultiColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    
        
        //Sliders
        //Red
        sliderRed.value = 0.5
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.minimumTrackTintColor = .red
        
        //Green
        sliderGreen.value = 0.5
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.minimumTrackTintColor = .green
        
        //Blue
        sliderBlue.value = 0.5
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.minimumTrackTintColor = .blue
        
        //Label
        labelRed.text = String(sliderRed.value)
        labelBlue.text = String(sliderBlue.value)
        labelGreen.text = String(sliderGreen.value)
        
        //View
        viewMultiColor.layer.cornerRadius = viewMultiColor.frame.width / 8
        
        viewMultiColor.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1)
        
    }
/*
    var sliderFirst = CGFloat(sliderRed.value)
    var sliderSecond = CGFloat(sliderGreen.value)
    var sliderThird = CGFloat(sliderBlue.value)
    */
    
    
    @IBAction func lsliderDoesRed() {
        
        labelRed.text = String(sliderRed.value)
        viewMultiColor.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1)
       
    }
    
    
    @IBAction func lsliderDoesGreen() {
        
        labelGreen.text = String(sliderGreen.value)
        viewMultiColor.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1)
    }
    
    
    @IBAction func lsliderDoesBlue() {
        
        labelBlue.text = String(sliderBlue.value)
        viewMultiColor.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1)
    }
    
    
}

