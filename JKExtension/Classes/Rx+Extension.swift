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
    public func filterMap<Value>(_ transform: @escaping (Element) -> Value?) -> Observable<Value> {
        return map(transform).filterNil()
    }

    public func mapVoid() -> Observable<Void> {
        return .just(Void())
    }
}

extension SharedSequenceConvertibleType {
    public func filterMap<Value>(_ transform: @escaping (Element) -> Value?) -> SharedSequence<SharingStrategy, Value> {
        return map(transform).filterNil()
    }

    public func mapVoid() -> SharedSequence<SharingStrategy, Void> {
        return .just(Void())
    }
}

extension PrimitiveSequenceType {
    public func filterMap<Value>(_ transform: @escaping (Element) -> Value?) -> PrimitiveSequence<SingleTrait, Value> {
        return primitiveSequence.asObservable().map(transform).filterNil().asSingle()
    }

    public func mapVoid() -> PrimitiveSequence<SingleTrait, Void> {
        return .just(Void())
    }
}

