//
//  Protocols.swift
//  Game
//
//  Created by Jonah Witcig on 11/2/16.
//  Copyright © 2016 Jonah Witcig. All rights reserved.
//

import Foundation
import Messages

import SwiftTools

public protocol GameTyped {
    associatedtype GameType: Game
}

public protocol GameScene {
    var game: Game! { get set }
}

@available(iOS 10.0, *)
public protocol MessageSessioned {
    var messageSession: MSSession { get }
}

public protocol GameCycleDelegate {
    func started(game: Game)
    func finished<S>(session: S) where S: SessionType & StringDictionaryRepresentable
}
