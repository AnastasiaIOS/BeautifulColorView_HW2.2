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
        
        //textfieldRed.delegate = self
       // textfieldBlue.delegate = self
      //  textfieldGreen.delegate = self
        
        viewMultiColor.backgroundColor = viewColor
        viewMultiColor.layer.cornerRadius = viewMultiColor.frame.width / 8
        
        //установка цвета слайдеров, значений labels, tf, переданного с 1 экрана
        setColorForSliders()
        setColorForLabels(labelRed, labelBlue, labelGreen)
        setColorForTextField(textfieldRed, textfieldBlue, textfieldGreen)
      
    }
    
    @IBAction func lsliderDoesRed() {
        setColorForSliders()
        labelRed.text = String(format: "%.2f", sliderRed.value)
        textfieldRed.text = String(format: "%.2f", sliderRed.value)
        setColor()
        
    }
    
    @IBAction func lsliderDoesGreen() {
        setColorForSliders()
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        textfieldGreen.text = String(format: "%.2f", sliderGreen.value)
        setColor()
        
    }
    
    @IBAction func lsliderDoesBlue() {
        setColorForSliders()
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        textfieldBlue.text = String(format: "%.2f", sliderBlue.value)
        setColor()
       
    }
    
    @IBAction func setupColorForScreen() {
        view.endEditing(true) // метод, принудит. завершающий редактирование
        delegate.setColor(viewMultiColor.backgroundColor ?? .gray)
        dismiss(animated: true)
    }
    
    // MARK: PRIVATE FUNC
    
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
                labelRed.text = doString(slider: sliderRed)
            } else if label == labelBlue {
                labelBlue.text = doString(slider: sliderBlue)
            } else if label == labelGreen {
                labelGreen.text = doString(slider: sliderGreen)
            }
        }
    }
    
    private func setColorForTextField(_ textfields: UITextField...) {
        for textfield in textfields {
            if textfield == textfieldRed {
                textfieldRed.text = doString(slider: sliderRed)
            } else if textfield == textfieldBlue {
                textfieldBlue.text = doString(slider: sliderBlue)
            } else if textfield == textfieldGreen {
                textfieldGreen.text = doString(slider: sliderGreen)
            }
        }
    }
    
    private func setColor() {
        viewMultiColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                                 green: CGFloat(sliderGreen.value),
                                                 blue: CGFloat(sliderBlue.value),
                                                 alpha: 1)
    }
    
    private func doString(slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}



extension ViewController: UITextViewDelegate {

    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let valueTF = textField.text else {return}
       
        if textField == textfieldRed {
            sliderRed.value = Float(valueTF) ?? 1
            labelRed.text = doString(slider: sliderRed)
        } else if textField == textfieldBlue {
            sliderBlue.value = Float(valueTF) ?? 1
            labelBlue.text = doString(slider: sliderBlue)
        } else if textField == textfieldGreen {
            sliderGreen.value = Float(valueTF) ?? 1
            labelGreen.text = doString(slider: sliderGreen)
        }
    }
}

