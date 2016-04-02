//
//  ConverterViewController.swift
//  HelloSwiftMobile World
//
//  Created by administrator on 02.04.16.
//  Copyright © 2016 Tatiana Leonova. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    let rubToUSDMultiplier = 1 / 67.67
    let usdToRubMultiplier = 63.0
    
    
    @IBOutlet weak var rubInput: UITextField!
    
    @IBOutlet weak var dollarInput: UITextField!
    
    @IBAction func rubToUsdPressed(sender: AnyObject) {
        convertToUsd()
    }
    
    @IBAction func rubToRubPressed(sender: AnyObject) {
        convertUSDToRub()
        
    }
    func convertToUsd(){
        guard let rubs = Double(rubInput.text!) else {
          return
        }
        let result = String(rubs * rubToUSDMultiplier)
        dollarInput.text = result
    }
    
    func convertUSDToRub(){
        guard let usd = Double(dollarInput.text!) else {
            return
        }
        let result = String ( usd * usdToRubMultiplier)
        rubInput.text = result
    }
    
}
