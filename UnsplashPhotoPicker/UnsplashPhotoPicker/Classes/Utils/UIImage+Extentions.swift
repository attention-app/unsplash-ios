//
//  File.swift
//  
//
//  Created by Amos Elliston on 1/3/22.
//

import UIKit

extension UIImage {
    convenience init(withBackground color: UIColor) {
        let rect: CGRect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size);
        let context:CGContext = UIGraphicsGetCurrentContext()!;
        context.setFillColor(color.cgColor);
        context.fill(rect)
        let image:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.init(ciImage: CIImage(image: image)!)
    }
}
