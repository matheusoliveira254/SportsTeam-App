//
//  Team.swift
//  SportsTeam App
//
//  Created by Matheus Oliveira on 9/24/22.
//

import Foundation

class Team {
    let id: UUID
    var name: String
    var ranking: Int
    var playerCount: Int
    
    init(id: UUID = UUID(), name: String, ranking: Int, playerCount: Int) {
        self.name = name
        self.ranking = ranking
        self.playerCount = playerCount
        self.id = id
    }
}

extension Team: Equatable {
    static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.id == rhs.id
    }
}
