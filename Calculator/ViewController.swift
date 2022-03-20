//
//  ViewController.swift
//  Calculator
//
//  Created by Kgcoc on 2022/3/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var numberButtons: [UIButton]!
    @IBOutlet var operatorButtons: [UIButton]!
    @IBOutlet weak var resultLabel: UILabel!
    var mathExprssion = ""
    var operatorList = [String]()
    var clearResult = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("123")
        // Do any additional setup after loading the view.
        for i in 0...9{
            setCircleButton(button:numberButtons[i])
        }
        for i in 0...8{
            setCircleButton(button:operatorButtons[i])
        }
                
    }
    
    func setCircleButton(button:UIButton){
        button.clipsToBounds = true
        button.layer.cornerRadius = button.bounds.size.height*0.5
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        let number = sender.tag
        if(resultLabel.text == "0"){
            resultLabel.text = String(number)
        }else if(clearResult){
            resultLabel.text = String(number)
            clearResult=false
        }
        else{
            resultLabel.text = resultLabel.text! + String(number)
        }
    }
    
    @IBAction func operatorAction(_ sender:UIButton){
        resultLabel.text="\(resultLabel.text!)+"
    }
    

    
}

