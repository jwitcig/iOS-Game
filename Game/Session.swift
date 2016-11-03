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

public class GameSession<T: Game>: GameTyped, DictionaryStoring {
    public typealias GameType = T

    public var dictionary: [String: String]
    public let gameData: GameData<GameType>

    public required init() {
        fatalError()
    }
    
    public init(sessionData: [String: String], gameData: GameData<GameType>) {
        self.dictionary = sessionData
        self.gameData = gameData
    }
}

public extension GameSession {
    public var gameOver: Bool { return dictionary["gameOver"]!.bool! }
}

@available(iOS 10.0, *)
public class iMSGGameSession<T: Game>: GameSession<T>, MessageSessioned {
    public let messageSession: MSSession
    
    public init(sessionData: [String: String], gameData: GameData<T>, messageSession: MSSession?) {
        self.messageSession = messageSession ?? MSSession()
        super.init(sessionData: sessionData, gameData: gameData)
    }
    
    public required init() {
        fatalError("init() has not been implemented")
    }
}
