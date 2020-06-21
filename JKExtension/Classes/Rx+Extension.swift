//
//  Rx+Extension.swift
//  JKExtension
//
//  Created by 정진규 on 2020/06/21.
//

import Foundation
import RxSwift
import RxCocoa
import RxOptional

extension ObservableType {
    func filterMap<Value>(_ transform: @escaping (Element) -> Value?) -> Observable<Value> {
        return map(transform).filterNil()
    }

    func mapVoid() -> Observable<Void> {
        return .just(Void())
    }
}

public extension SharedSequenceConvertibleType {
    func filterMap<Value>(_ transform: @escaping (Element) -> Value?) -> SharedSequence<SharingStrategy, Value> {
        return map(transform).filterNil()
    }

    func mapVoid() -> SharedSequence<SharingStrategy, Void> {
        return .just(Void())
    }
}

public extension PrimitiveSequenceType {
    func filterMap<Value>(_ transform: @escaping (Element) -> Value?) -> PrimitiveSequence<SingleTrait, Value> {
        return primitiveSequence.asObservable().map(transform).filterNil().asSingle()
    }

    func mapVoid() -> PrimitiveSequence<SingleTrait, Void> {
        return .just(Void())
    }
}

