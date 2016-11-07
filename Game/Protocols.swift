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

public protocol GameScene: SessionTyped {
    var game: Game! { get set }
    
    init(initial: Session.InitialData?, previousSession: Session?, delegate: GameCycleDelegate, viewAttacher: ViewAttachable)
}

public protocol GameCycleDelegate {
    func started(game: Game)
    func finished<S>(session: S) where S: SessionType & StringDictionaryRepresentable
}

public protocol ViewAttachable {
    func display(view: UIView)
}
