//
//  UIView.swift
//  Standard Chartered
//
//  Created by Sidra Jabeen on 25/08/2021.
//

import Foundation
import UIKit

extension UIView {
        
        func applyCircledView() {
            
            self.layer.cornerRadius = self.frame.size.height / 2
            self.clipsToBounds = true
        }
}
 
