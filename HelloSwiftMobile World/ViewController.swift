//
//  ViewController.swift
//  HelloSwiftMobile World
//
//  Created by administrator on 02.04.16.
//  Copyright © 2016 Tatiana Leonova. All rights reserved.
//

import UIKit


//AutoLayout - позволяет устанавливать правила расположения элементов относительно друг друга

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var inputField: UITextField!

    @IBAction func buttonPressed(sender: AnyObject) {
        
        let userName = inputField.text ?? "Аноним"
        let greeting = userName + ", Добро пожаловать в мир разработки мобильных приложений! Ихааа!!!"
        greetingLabel.text = greeting
    }
    
   override func viewDidLoad() {
        super.viewDidLoad()
    
//    класс вью контроллера стал дилегатом поля для ввода текста
    
        inputField.delegate = self
    }
}
//  поддержка протокола

extension ViewController:UITextFieldDelegate {
    
//    скрываем клавиатуру после нажатия ввод
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
//        перестань быть ответсвенным
        textField.resignFirstResponder()
        return true
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var applyiedString = (textField.text as? NSString)?.stringByReplacingCharactersInRange(range, withString: string)
        let elementsToConvert = ["1": "Один", "2": "два", "3": "три", "4": "четыре", "5": "пять", "6": "шесть", "7": "семь", "8":"восемь", "9":"девять"]
        
        for (digit,letters) in elementsToConvert {
          applyiedString = applyiedString?.stringByReplacingOccurrencesOfString(digit, withString: letters)
            
        }
        textField.text = applyiedString
        
        return false
    }
    
    
    
}