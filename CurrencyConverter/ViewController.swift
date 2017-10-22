//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by shadi on 10/18/17.
//  Copyright © 2017 shadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    inputTextField.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convert(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        pountlable.text = "\(dollarAmount * poundRate)"
        yenlable.text = "\(dollarAmount * yenRate)"
        eurolable.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
        
    }
    
    
    @IBAction func clear(_ sender: UIButton) {
        
        inputTextField.text  = ""
        pountlable.text = "0.00"
        yenlable.text = "0.00"
        eurolable.text = "0.00"
    }
    @IBOutlet weak var pountlable: UILabel!
    
    @IBOutlet weak var yenlable: UILabel!
    @IBOutlet weak var eurolable: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
}

