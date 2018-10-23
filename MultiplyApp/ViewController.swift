//
//  ViewController.swift
//  MultiplyApp
//
//  Created by Jacob Smith on 10/1/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mathSegmentedController: UISegmentedControl!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet var equationSignLabel: UILabel!
    @IBOutlet weak var imageZucc: UIImageView!
    var mathSymbol: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    
    @IBAction func whenPressedMathSegmentedController(_ sender: Any) {
        switch mathSegmentedController.selectedSegmentIndex {
        case 0:
            mathSymbol = 0
        case 1:
            mathSymbol = 1
        case 2:
            mathSymbol = 2
        case 3:
            mathSymbol = 3
        default:
            break
        }
    }
    
    @IBAction func whenTypedTextField1(_ sender: Any) {
        
    }
    
    @IBAction func whenTypedTextField2(_ sender: Any) {
        
    }
    
    @IBAction func whenButtonPressed(_ sender: Any) {
        let number1 = Int(textField1.text!)!
        let number2 = Int(textField2.text!)!
        var answer: Int! = 0
        
        
        if mathSymbol == 0 {
            answer = number1 + number2
        }
        if mathSymbol == 1 {
            answer = number1 - number2
        }
        if mathSymbol == 2 {
            answer = number1 * number2
        }
        if mathSymbol == 3 {
            answer = number1 / number2
        }
        answerLabel.text = "\(answer!)"
        
        if answer%2 == 1 {
            imageZucc.image = UIImage(named: "zucc")
        }
        
        if answer%2 == 0 {
            imageZucc.image = UIImage(named: "zuccFlipped")
            if answer == 64 {
                print("dsaf")
                imageZucc.image = UIImage(named: "koopaui")
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        resignFirstResponder()
        return true
    }
}

