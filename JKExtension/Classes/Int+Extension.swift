//
//  Int+Extension.swift
//  iOS-Extension
//
//  Created by JingyuJung on 2019/12/21.
//  Copyright © 2019 JingyuJung. All rights reserved.
//

import Foundation

extension Int {
    public func toDecimalString() -> String? {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(integerLiteral: self))
    }
}
