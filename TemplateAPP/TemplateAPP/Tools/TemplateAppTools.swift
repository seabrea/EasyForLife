//
//  TemplateAppTools.swift
//  TemplateAPP
//
//  Created by Bob on 2019/5/8.
//  Copyright © 2019 hgd. All rights reserved.
//

import UIKit

class TemplateAppTools {
    
    public struct ConstantHex {
        static let AppColor: UInt32 = 0xFF80AB
    }

    public class func mainWindow() -> UIWindow {
        
        let appdelegete = UIApplication.shared.delegate as! AppDelegate
        
        if let keyWindow = appdelegete.window {
            return keyWindow
        }
        
        let windowArray = UIApplication.shared.windows
        
        if windowArray.count == 1 {
            return windowArray.first!
        }
        else {
            
            for window in windowArray {
                
                if window.windowLevel == .normal {
                    return window
                }
            }
        }
        return UIWindow.init()
    }
}

extension UIColor {
    
    public class func colorHex(_ hex: UInt32) -> UIColor {
        
        let mask      = UInt32(0xFF)
        let cappedHex = hex
        
        let r = cappedHex >> 16 & mask
        let g = cappedHex >> 8 & mask
        let b = cappedHex >> 9 & mask
        let a = 255
        
        let red   = CGFloat(r) / 255
        let green = CGFloat(g) / 255
        let blue  = CGFloat(b) / 255
        let alpha = CGFloat(a) / 255
        
        return UIColor.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
