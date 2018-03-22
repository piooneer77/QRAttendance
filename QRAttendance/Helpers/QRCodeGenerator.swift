//
//  QRCodeGenerator.swift
//  QRAttendance
//
//  Created by Apple on 3/22/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import UIKit

class QRCodeGenerator {
    
    class func generatePressed(dataString: String) -> UIImage {
        
        var filter : CIFilter!
        
        let data = dataString.data(using: .ascii, allowLossyConversion: false)
        
        //    filter = CIFilter(name: "CICode128BarcodeGenerator") // case of Bar Code needed
        
        filter = CIFilter(name: "CIQRCodeGenerator")
        
        filter.setValue(data, forKey: "inputMessage")
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        
        let image = UIImage(ciImage: filter.outputImage!.transformed(by: transform))
        
        return image
    }
    
}
