//
//  UITextFieldExtension.swift
//  OTP
//
//  Created by Hala on 05/05/2021.
//

import UIKit

extension UITextField{
    
    func border(){
        
        let layer = CALayer()
        layer.frame = CGRect(x: 0.0, y: self.frame.size.height - 2.0, width: self.frame.size.width, height: 2.0)
        
        layer.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        self.layer.addSublayer(layer)
    }
    
    
}
