//
//  Protocols.swift
//  Game
//
//  Created by Jonah Witcig on 11/2/16.
//  Copyright © 2016 Jonah Witcig. All rights reserved.
//

import Foundation
import Messages

public protocol GameTyped {
    associatedtype GameType: Game
}

public protocol GameScene {
    var game: Game! { get set }
}
