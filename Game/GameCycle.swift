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
public class SessionCycle<S: SessionType>: LifeCycle {
    public init(started: (() -> Void)?,
               finished: @escaping (S) -> Void,
        generateSession: @escaping () -> S) {
       
        super.init(started: started, finished: {
            finished(generateSession())
        })
    }
}
