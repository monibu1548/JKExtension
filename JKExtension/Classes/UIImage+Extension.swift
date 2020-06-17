//
//  UIImage+Extension.swift
//  iOS-Extension
//
//  Created by JingyuJung on 2019/11/24.
//  Copyright © 2019 JingyuJung. All rights reserved.
//

import UIKit

extension UIImage {
    public func resize(image: UIImage, scale: CGFloat, completion: ((UIImage?) -> Void)) {
        let transform = CGAffineTransform(scaleX: scale, y: scale)
        let size = image.size.applying(transform)
        UIGraphicsBeginImageContext(size)
        image.draw(in: CGRect(origin: .zero, size: size))
        let resultImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        completion(resultImage)
    }
}
