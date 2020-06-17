//
//  UIView+Extension.swift
//  iOS-Extension
//
//  Created by JingyuJung on 2019/11/24.
//  Copyright © 2019 JingyuJung. All rights reserved.
//

import UIKit

// Storyboard inspectable
extension UIView {
    @IBInspectable
    public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable
    public var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    public var borderColor: UIColor? {
        get {
            let color = UIColor(cgColor: layer.borderColor!)
            return color
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable
    public var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowOpacity = 0.4
            layer.shadowRadius = newValue
        }
    }
}

//
extension UIView {
    public static func instanceFromNib() -> Self {
        let nib = UINib(nibName: NSStringFromClass(Self.self).components(separatedBy: ".").last!, bundle: nil)
        return nib.instantiate(withOwner: nil).first! as! Self
    }
}

extension UIView {
    public func getConvertedFrame(fromSubview subview: UIView) -> CGRect? {
        guard subview.isDescendant(of: self) else {
            return nil
        }

        var frame = subview.frame
        if subview.superview == nil {
            return frame
        }

        var superview = subview.superview
        while superview != self {
            frame = superview!.convert(frame, to: superview!.superview)
            if superview!.superview == nil {
                break
            } else {
                superview = superview!.superview
            }
        }

        return superview!.convert(frame, to: self)
    }
}
