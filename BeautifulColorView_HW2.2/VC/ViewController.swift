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
    
    var delegate: SetColorForScreenDelegate!
    var viewColor: UIColor!  // цвет, который распарсим на составляющие
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        
        //View
        viewMultiColor.layer.cornerRadius = viewMultiColor.frame.width / 8
      
        
        
        
        //Label
        labelRed.text = String(format: "%.2f", sliderRed.value)
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        
        //TF
        textfieldRed.text = labelRed.text
        textfieldBlue.text = labelBlue.text
        textfieldGreen.text = labelGreen.text
        
        
        
        
    }
    
    @IBAction func lsliderDoesRed() {
        setColorForSliders()
        labelRed.text = String(sliderRed.value)
        textfieldRed.text = String(format: "%.2f", sliderRed.value)
        
    }
    
    @IBAction func lsliderDoesGreen() {
        setColorForSliders()
        labelGreen.text = String(sliderGreen.value)
        textfieldGreen.text = String(format: "%.2f", sliderGreen.value)
        setColor()
    }
    
    @IBAction func lsliderDoesBlue() {
        setColorForSliders()
        labelBlue.text = String(sliderBlue.value)
        textfieldBlue.text = String(format: "%.2f", sliderBlue.value)
       
    }
    
    // установка цвета слайдеров
    private func setColorForSliders() {
        let classColor = CIColor(color: viewColor)
        sliderRed.value = Float(classColor.red)
        sliderBlue.value = Float(classColor.blue)
        sliderGreen.value = Float(classColor.green)
    }
    
    private func setColor() {
        viewMultiColor.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1)
    }
    
    
    @IBAction func setupColorForScreen() {
        view.endEditing(true)
      //  delegate.setColor()
    }
}

