//
//  Game.swift
//  Game
//
//  Created by Jonah Witcig on 11/2/16.
//  Copyright © 2016 Jonah Witcig. All rights reserved.
//

import Foundation

import SpriteKit
import SwiftTools

public protocol Game: class {    
    static var GameName: String { get }
    
    var padding: Padding? { get }
    
    var lifeCycle: LifeCycle { get }
        
    func start()
    
    func finish()
}

public protocol SingleScene {
    associatedtype SceneType: SKScene
}
