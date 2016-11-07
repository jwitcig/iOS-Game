//
//  Session.swift
//  Game
//
//  Created by Jonah Witcig on 11/2/16.
//  Copyright © 2016 Jonah Witcig. All rights reserved.
//

import Foundation
import Messages
import SpriteKit

import SwiftTools

public protocol DictionaryRepresentable {
    associatedtype Key: Hashable
    associatedtype Value
    
    var dictionary: [Key: Value] { get }
}

public protocol StringDictionaryRepresentable {
    var dictionary: [String: String] { get }
}

public protocol SessionType {
    associatedtype Key: Hashable
    associatedtype Value
    
    associatedtype InitialData: InitialDataType
    associatedtype InstanceData: InstanceDataType
    
    var ended: Bool { get }
    
    var initial: InitialData { get }
    var instance: InstanceData { get }
    
    init?(dictionary: [Key : Value])
}

public protocol SessionTyped {
    associatedtype Session: SessionType
}

public protocol SessionDataType {
    associatedtype Constraint: TypeConstraint
}

public protocol TypeConstraint { }


public protocol InstanceDataType: SessionDataType { }
public protocol InitialDataType: SessionDataType { }

@available(iOS 10.0, *)
public protocol SessionSpecific {
    associatedtype SessionConstraint: SessionType
}
