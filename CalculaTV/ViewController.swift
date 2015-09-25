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
    var eq = NSExpression()
    var justEqualed = false
    var firstInteration = true
    var firstNumber = true
    
    @IBOutlet weak var numberOne: UIButton!
    @IBOutlet weak var numberTwo: UIButton!
    @IBOutlet weak var numberThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /* !!!
    
    Remember to call a function with defined number instead of calling the same thing for each one! (I love notes.)
    
       !!! */

    @IBAction func numberOneClick(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "1"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "1"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func numberTwoClicked(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "2"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "2"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func numberThreeClicked(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "3"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "3"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func numberFourClicked(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "4"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "4"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func numberFiveClicked(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "5"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "5"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func numberSixClicked(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "6"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "6"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func numberSevenClicked(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "7"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "7"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func numberEightClicked(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "8"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "8"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func numberNineClicked(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "9"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "9"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func numberZeroClicked(sender: AnyObject) {
        if justEqualed || firstInteration {
            clear(stringNum)
            stringNum += "0"
            outputLabel.text = stringNum
            firstNumber = false
            justEqualed = false
            firstInteration = false
        } else {
            stringNum += "0"
            outputLabel.text = stringNum
        }
    }
    
    @IBAction func addEq(sender: AnyObject) {
        if firstNumber || justEqualed {
            return
        }
        stringNum += "+"
        outputLabel.text = stringNum
    }
    
    @IBAction func devideEq(sender: AnyObject) {
        if firstNumber || justEqualed {
            return
        }
        stringNum += "/"
        outputLabel.text = stringNum
    }
    
    @IBAction func timesEq(sender: AnyObject) {
        if firstNumber || justEqualed {
            return
        }
        stringNum += "*"
        outputLabel.text = stringNum
    }
    
    @IBAction func minusEq(sender: AnyObject) {
        if firstNumber || justEqualed {
            return
        }
        stringNum += "-"
        outputLabel.text = stringNum
    }
    
    @IBAction func equals(sender: AnyObject) {
        eq = NSExpression(format: stringNum)
        
        let calculatedNumber = (eq.expressionValueWithObject(nil, context: nil))
        
        stringNum += ("=" + String(calculatedNumber))
        outputLabel.text = (stringNum) as String
        justEqualed = true
    }
    
    @IBAction func clear(sender: AnyObject) {
        eq = NSExpression()
        justEqualed = true
        stringNum = ""
        outputLabel.text = "Cleared"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

