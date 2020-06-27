//
//  Collection+Extension.swift
//  JKExtension
//
//  Created by 정진규 on 2020/06/27.
//

import Foundation

extension Collection {
    public subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
