//
//  GameCycle.swift
//  Game
//
//  Created by Jonah Witcig on 11/2/16.
//  Copyright © 2016 Jonah Witcig. All rights reserved.
//

import Foundation

import SwiftTools

public class GameCycle<T: Game>: LifeCycle, GameTyped {
    public typealias GameType = T
    public typealias Session = GameSession<GameType>
    
    public let generateSession: ()->Session
    
    public init(started: (() -> Void)?,
         finished: (() -> Void)?,
         generateSession: @escaping ()->Session) {
        self.generateSession = generateSession
        super.init(started: started, finished: finished)
    }
    
    public override func finish() {
        super.finish()
        finish(session: generateSession())
    }
    
    public func finish(session: Session) {
        // intended to be overridden
    }
}
