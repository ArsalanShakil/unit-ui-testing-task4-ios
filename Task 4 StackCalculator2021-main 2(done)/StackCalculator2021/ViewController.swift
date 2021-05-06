//
//  ViewController.swift
//  StackCalculator2021
//
//  Created by Petri/Metropolia on 25.3.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let myCalc = StackCalculator()
    private var displayToBeCleared = true
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = "0"
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if (displayToBeCleared) {
            display.text = "\(sender.tag)"
            displayToBeCleared = false
        } else {
            display.text = "\(display.text ?? "")\(sender.tag)"
        }
    }
    
    @IBAction func operatorPressed(_ sender: UIButton) {
        let calcOperator = Operator(rawValue: "\(sender.titleLabel?.text ?? Operator.noOp.rawValue)") ?? Operator.noOp
        myCalc.doCalc(with:calcOperator)
        if let result = myCalc.pop() {
            display.text = "\(result)"
            myCalc.push(result)
        }
        displayToBeCleared = true
    }
    
    @IBAction func cePressed(_ sender: Any) {
        myCalc.reset()
        display.text = "0"
        displayToBeCleared = true
    }
    
    @IBAction func enterPressed(_ sender: UIButton) {
        if let value = Int(display.text ?? "0") {
            myCalc.push(value)
            display.text = ""
            displayToBeCleared = true
        }
    }
}
 
