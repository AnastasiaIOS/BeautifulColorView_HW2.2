//
//  FirstScreenViewController.swift
//  BeautifulColorView_HW2.2
//
//  Created by Anastasia on 20.04.2022.
//

import UIKit

protocol SetColorForScreenDelegate {
    func setColor(_ color: UIColor)
}

class FirstScreenViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {return}
        guard let colorVC = navigationVC.topViewController as? ViewController else {return}
        colorVC.viewColor = view.backgroundColor
        colorVC.delegate = self
    }
}

extension FirstScreenViewController: SetColorForScreenDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
        
    }
}
