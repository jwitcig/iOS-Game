//
//  Enums.swift
//  Game
//
//  Created by Jonah Witcig on 11/2/16.
//  Copyright © 2016 Jonah Witcig. All rights reserved.
//

import Foundation

public enum GameAction: String {
    case newGame = "New Game"
    case startGame = "Start"
}

public enum Team {
    public enum OneOnOne: String {
        case you, them, tie
    }
    public enum Multi {
        case you, them(id: String)
    }
}

@available(iOS 10.0, *)
public enum GameBegin<T: Game> {
    case new(gameType: T.Type)
    case continued(session: iMSGGameSession<T>)
}
