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
    
    public init(started: (() -> Void)?,
               finished: @escaping ((Session<T>) -> Void),
        generateSession: @escaping ()->Session<T>) {
       
        super.init(started: started, finished: {
            finished(generateSession())
        })
    }
}
