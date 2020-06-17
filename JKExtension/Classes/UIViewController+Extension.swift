//
//  UIViewController+Extension.swift
//  iOS-Extension
//
//  Created by JingyuJung on 2019/11/17.
//  Copyright © 2019 JingyuJung. All rights reserved.
//

import UIKit

extension UIViewController {
    public static func instanceFromStoryboard() -> Self {
        let storyboardName = NSStringFromClass(Self.self).components(separatedBy: ".").last!
        let vc = UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController()
        vc?.loadViewIfNeeded()
        return vc as! Self
    }
}
