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
    
    
    @IBOutlet var textfieldRed: UITextField!
    @IBOutlet var textfieldGreen: UITextField!
    @IBOutlet var textfieldBlue: UITextField!
    
    @IBOutlet var viewMultiColor: UIView!
    
    let delegate: SetColorForScreenDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
        
        //Label
        labelRed.text = String(format: "%.2f", sliderRed.value)
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        
        
        //View
        viewMultiColor.layer.cornerRadius = viewMultiColor.frame.width / 8
        setColor()
        
    }
    
    @IBAction func lsliderDoesRed() {
        labelRed.text = String(sliderRed.value)
        textfieldRed.text = String(format: "%.2f", sliderRed.value)
        setColor()
    }
    
    @IBAction func lsliderDoesGreen() {
        labelGreen.text = String(sliderGreen.value)
        textfieldGreen.text = String(format: "%.2f", sliderGreen.value)
        setColor()
    }
    
    @IBAction func lsliderDoesBlue() {
        labelBlue.text = String(sliderBlue.value)
        textfieldBlue.text = String(format: "%.2f", sliderBlue.value)
        setColor()
    }
    
    private func setColor() {
        viewMultiColor.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1)
    }
    
    
    @IBAction func setupColorForScreen() {
        
    }
}

