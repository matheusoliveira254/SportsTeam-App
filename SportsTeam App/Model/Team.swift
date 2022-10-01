//
//  Team.swift
//  SportsTeam App
//
//  Created by Matheus Oliveira on 9/24/22.
//

import Foundation

class Team: Codable {
    let id: UUID
    var name: String
    var ranking: String
    var playerCount: String
    
    init(id: UUID = UUID(), name: String, ranking: String, playerCount: String) {
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
