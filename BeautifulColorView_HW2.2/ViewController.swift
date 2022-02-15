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
        
        //Blue
        sliderBlue.value = 0.5
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.minimumTrackTintColor = .blue
        
        //Green
        sliderGreen.value = 0.5
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.minimumTrackTintColor = .green
        
        //Label
        labelRed.text = String(sliderRed.value)
        labelBlue.text = String(sliderBlue.value)
        labelGreen.text = String(sliderGreen.value)
        
    }


    @IBAction func lsliderDoesRed() {
        
    }
    
    
    @IBAction func lsliderDoesGreen() {
    }
    
    
    @IBAction func lsliderDoesBlue() {
    }
    
    
}

