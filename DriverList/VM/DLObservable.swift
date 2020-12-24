//
//  DLObservable.swift
//  DriverList
//
//  Created by guillaume MAIANO on 22/12/2020.
// The basic utility class for Simple, no-shenanigans MVVM
// For more fun, RxSwift or Combine can bring hours of yay

import Foundation

public final class DLObservable<Value> {

    private var closure: ((Value) -> ())?

    // very basic observable - no handling of endless loops (no user input)
    // and no data protection (private access)
    public var value: Value {
        didSet { closure?(value) }
    }

    public init(_ value: Value) {
        self.value = value
    }

    public func observe(_ closure: @escaping (Value) -> Void) {
        self.closure = closure
        closure(value)
    }
}
