//
//  Result+Extension.swift
//  JKExtension
//
//  Created by 정진규 on 2020/06/21.
//

import Foundation

public extension Result {
    var value: Success? {
        guard case let .success(value) = self else {
            return nil
        }
        return value
    }

    var error: Failure? {
        guard case let .failure(error) = self else {
            return nil
        }
        return error
    }
}
