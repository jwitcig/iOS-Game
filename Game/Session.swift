//
//  Session.swift
//  Game
//
//  Created by Jonah Witcig on 11/2/16.
//  Copyright © 2016 Jonah Witcig. All rights reserved.
//

import Foundation
import Messages

import SwiftTools

public protocol DictionaryRepresentable {
    associatedtype Key: Hashable
    associatedtype Value
    
    var dictionary: [Key: Value] { get }
}

public protocol StringDictionaryStorable {
    var dictionary: [String: String] { get set }
}

public protocol StringDictionaryRepresentable {
    var dictionary: [String: String] { get }
}

public protocol SessionConstraint {
    associatedtype Session: SessionType
}

public protocol SessionType {
    associatedtype ConstraintType
    associatedtype InitialData: InitialDataType
    associatedtype InstanceData: InstanceDataType
    
    var initial: InitialData { get }
    var instance: InstanceData { get }
}

public protocol SessionDataType {
    associatedtype ConstraintType
}

public protocol InstanceDataType: SessionDataType { }
public protocol InitialDataType: SessionDataType { }

@available(iOS 10.0, *)
public protocol Sessioned {
    associatedtype SessionType
}
