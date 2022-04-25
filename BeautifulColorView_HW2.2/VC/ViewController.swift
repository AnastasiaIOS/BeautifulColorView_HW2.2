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
    
    
    var delegate: SetColorForScreenDelegate! // экземпляр протокола
    var viewColor: UIColor!  // цвет, который распарсим на составляющие
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        
        textfieldRed.delegate = self
        textfieldBlue.delegate = self
        textfieldGreen.delegate = self
        
        viewMultiColor.backgroundColor = viewColor
        viewMultiColor.layer.cornerRadius = viewMultiColor.frame.width / 8
        
        setColorForSliders()
        setColorForLabels(labelRed, labelBlue, labelGreen)
        setColorForTextField(textfieldRed, textfieldBlue, textfieldGreen)
      
    
// добавить функции по установке цвета слайдеров, лейблов и тф
    }
    
    @IBAction func lsliderDoesRed() {
        setColorForSliders()
        labelRed.text = String(format: "%.2f", sliderRed.value)
        textfieldRed.text = String(format: "%.2f", sliderRed.value)
        
    }
    
    @IBAction func lsliderDoesGreen() {
        setColorForSliders()
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        textfieldGreen.text = String(format: "%.2f", sliderGreen.value)
        
    }
    
    @IBAction func lsliderDoesBlue() {
        setColorForSliders()
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        textfieldBlue.text = String(format: "%.2f", sliderBlue.value)
       
    }
    
    @IBAction func setupColorForScreen() {
        view.endEditing(true) // метод, принудит. завершающий                           процесс редактирования
        delegate.setColor(viewMultiColor.backgroundColor ?? .gray)
    }
    
    
    
    // установка цвета слайдеров
    private func setColorForSliders() {
        let classColor = CIColor(color: viewColor)
        sliderRed.value = Float(classColor.red)
        sliderBlue.value = Float(classColor.blue)
        sliderGreen.value = Float(classColor.green)
    }
    
    private func setColorForLabels(_ labels: UILabel...) {
        for label in labels {
            if label == labelRed {
                labelRed.text = String(format: "%.2f", sliderRed.value)
            } else if label == labelBlue {
                labelBlue.text = String(format: "%.2f", sliderBlue.value)
            } else if label == labelGreen {
                labelGreen.text = String(format: "%.2f", sliderGreen.value)
            }
        }
    }
    
    private func setColorForTextField(_ textfields: UITextField...) {
        for textfield in textfields {
            if textfield == textfieldRed {
                textfieldRed.text = String(format: "%.2f", sliderRed.value)
            } else if textfield == textfieldBlue {
                textfieldBlue.text = String(format: "%.2f", sliderBlue.value)
            } else if textfield == textfieldGreen {
                textfieldGreen.text = String(format: "%.2f", sliderGreen.value)
            }
        }
    }
    
    private func setColor() {
        viewMultiColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                                 green: CGFloat(sliderGreen.value),
                                                 blue: CGFloat(sliderBlue.value),
                                                 alpha: 1)
    }
    
    
}



extension ViewController: UITextViewDelegate {
    
}

