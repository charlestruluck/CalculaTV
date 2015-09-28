//
//  ViewController.swift
//  CalculaTV
//
//  Created by Charles on 9/24/15.
//  Copyright © 2015 Charles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    var stringNum = ""
    var justEqualed = false
    var firstInteration = true
    var calculatedNumber = String()
    
    @IBOutlet weak var numberOne: UIButton!
    @IBOutlet weak var numberTwo: UIButton!
    @IBOutlet weak var numberThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func numberClicked(sender: AnyObject) {
        let currentNumber = sender as! UIButton
        if firstInteration {
            stringNum += currentNumber.currentTitle! as String
            outputLabel.text = stringNum
            firstInteration = false
        } else if justEqualed {
            return
        } else {
            stringNum += currentNumber.titleLabel?.text as String!
            outputLabel.text = stringNum
            justEqualed = false
        }
    }
    
    @IBAction func addEq(sender: AnyObject) {
        let eqType = sender as! UIButton
        let selectedOperator = eqType.tag
        var usingOperator = ""
        switch selectedOperator {
        case 0:
            usingOperator = " + "
        case 1:
            usingOperator = " - "
        case 2:
            usingOperator = " / "
        case 3:
            usingOperator = " * "
        default:
            usingOperator = "nil"
        }
        
        if justEqualed {
            stringNum = String(calculatedNumber + usingOperator)
            outputLabel.text = stringNum
            justEqualed = false
            return
        } else if firstInteration {
            return
        } else {
            firstInteration = false
            stringNum += usingOperator
            justEqualed = false
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func equals(sender: AnyObject) {
        if justEqualed {
            return
        } else {
            let eq = NSExpression(format: stringNum)
            calculatedNumber = String(eq.expressionValueWithObject(nil, context: nil))
            stringNum += (" = " + String(calculatedNumber))
            outputLabel.text = stringNum
            justEqualed = true
        }
    }
    
    @IBAction func clear(sender: AnyObject) {
        firstInteration = true
        stringNum = ""
        calculatedNumber = ""
        outputLabel.text = "Cleared"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

