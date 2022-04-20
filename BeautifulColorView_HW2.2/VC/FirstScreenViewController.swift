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

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? ViewController else {return}
        colorVC.delegate = self
    }
    
}

extension FirstScreenViewController: SetColorForScreenDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
