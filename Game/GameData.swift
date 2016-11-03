//
//  GameData.swift
//  Game
//
//  Created by Jonah Witcig on 11/2/16.
//  Copyright © 2016 Jonah Witcig. All rights reserved.
//

import Foundation

import SwiftTools

public struct GameData<T: Game>: DictionaryStoring, GameTyped {
    public typealias GameType = T
    
    public var dictionary: [String: String]
    
    public init() {
        self.dictionary = [:]
        fatalError()
    }
    
    func value(forKey key: String) -> String {
        return dictionary[key]!
    }
}

public struct GameInitData<T: Game>: DictionaryStoring, GameTyped {
    public typealias GameType = T
    
    public var dictionary: [String: String]
    
    public init() {
        self.dictionary = [:]
    }
}
