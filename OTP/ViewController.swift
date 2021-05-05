//
//  ViewController.swift
//  OTP
//
//  Created by Hala on 05/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    // textFields outlets and delegets
    @IBOutlet weak var firstNumberTextField: UITextField!{
        didSet{
            firstNumberTextField.delegate = self
            firstNumberTextField.border()
        }
    }
    
    @IBOutlet weak var secondNumberTextField: UITextField!{
        didSet{
            secondNumberTextField.delegate = self
            secondNumberTextField.border()
        }
    }
    
    @IBOutlet weak var thirdNumberTextField: UITextField!{
        didSet{
            thirdNumberTextField.delegate = self
            thirdNumberTextField.border()
        }
    }
    
    @IBOutlet weak var fourthNumberTextField: UITextField!{
        didSet{
            fourthNumberTextField.delegate = self
            fourthNumberTextField.border()
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }


}


extension ViewController: UITextFieldDelegate{
    
    
    // goNext Function => to move to the next textfield
    func goNext(textField: UITextField){
        
        switch textField {
        
        case firstNumberTextField:
            secondNumberTextField.isUserInteractionEnabled = true
            secondNumberTextField.becomeFirstResponder()
            
        case secondNumberTextField:
            thirdNumberTextField.isUserInteractionEnabled = true
            thirdNumberTextField.becomeFirstResponder()
            
        case thirdNumberTextField:
            fourthNumberTextField.isUserInteractionEnabled = true
            fourthNumberTextField.becomeFirstResponder()
            
        default:
            break
        }
    }
    
    
    // goNext Function => to move to the previous textfield
    func goBack(textField: UITextField){
        
        switch textField {
            
        case fourthNumberTextField:
            thirdNumberTextField.becomeFirstResponder()
            fourthNumberTextField.isUserInteractionEnabled = false
            
        case thirdNumberTextField:
            secondNumberTextField.becomeFirstResponder()
            thirdNumberTextField.isUserInteractionEnabled = false
            
        case secondNumberTextField:
            firstNumberTextField.becomeFirstResponder()
            secondNumberTextField.isUserInteractionEnabled = false
            
        default:
            break
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField.text!.count < 1 && string.count > 0{
            
            goNext(textField: textField)
            textField.text = string
            return false
            
        }
        else if textField.text!.count >= 1 && string.count == 0{
            
            goBack(textField: textField)
            textField.text = ""
            return false
            
        }else if textField.text!.count >= 1{
            
            textField.text = string
            return false
            
        }
        
        return true
    }
    
    
}

