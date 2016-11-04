//
//  GameCycle.swift
//  Game
//
//  Created by Jonah Witcig on 11/2/16.
//  Copyright © 2016 Jonah Witcig. All rights reserved.
//

import Foundation

import SwiftTools

@available(iOS 10.0, *)
public class SessionCycle<T>: LifeCycle, Sessioned {
    public typealias SessionType = T
    
    public let generateSession: ()->Session<T>
    
    public init(started: (() -> Void)?,
         finished: (() -> Void)?,
         generateSession: @escaping ()->Session<T>) {
        self.generateSession = generateSession
        super.init(started: started, finished: finished)
    }
    
    public override func finish() {
        super.finish()
        finish(session: generateSession())
    }
    
    public func finish(session: Session<T>) {
        // intended to be overridden
    }
}
