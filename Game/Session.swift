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

@available(iOS 10.0, *)
public protocol Sessionable: StringDictionaryRepresentable {
    associatedtype SessionType
    
    var instance: InstanceData<SessionType> { get }
    var initial: InitialData<SessionType> { get }
}

@available(iOS 10.0, *)
public extension Sessionable {
    var dictionary: [String: String] {
        return instance.dictionary.merged(initial.dictionary)
    }
}

@available(iOS 10.0, *)
public protocol Sessioned {
    associatedtype SessionType
}

@available(iOS 10.0, *)
public struct Session<T>: Sessionable, Messageable {
    public typealias SessionType = T
    
    public let instance: InstanceData<SessionType>
    public let initial: InitialData<SessionType>
    
    public let messageSession: MSSession?
    
    public init(instance: InstanceData<SessionType>, initial: InitialData<SessionType>, messageSession: MSSession?) {
        self.instance = instance
        self.initial = initial
        self.messageSession = messageSession
    }
    
    public init?(dictionary: [String: String]) {
        guard let instance = InstanceData<SessionType>.create(dictionary: dictionary) else { return nil }
        guard let initial = InitialData<SessionType>.create(dictionary: dictionary) else { return nil }
        
        self.instance = instance
        self.initial = initial
    
        self.messageSession = nil
    }
}

@available(iOS 10.0, *)
public struct InstanceData<T>: StringDictionaryRepresentable, Sessioned {
    public typealias SessionType = T
    
    public let dictionary: [String: String]
    
    public static func create(dictionary: [String: String]) -> InstanceData<SessionType>? {
        return nil
    }
}

@available(iOS 10.0, *)
public struct InitialData<T>: StringDictionaryRepresentable, Sessioned {
    public typealias SessionType = T
    
    public let dictionary: [String: String]
    
    public static func create(dictionary: [String: String]) -> InitialData<SessionType>? {
        return nil
    }
    
    public func typed<U>(as: U.Type) -> InitialData<U> {
        return InitialData<U>(dictionary: dictionary)
    }
}
