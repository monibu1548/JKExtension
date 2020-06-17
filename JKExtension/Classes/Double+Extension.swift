//
//  Double+Extension.swift
//  PrepareResignation
//
//  Created by 정진규 on 2020/01/05.
//  Copyright © 2020 JingyuJung. All rights reserved.
//

import Foundation

extension Double {
    public func toDecimalString() -> String? {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(integerLiteral: Int(self)))
    }
}
