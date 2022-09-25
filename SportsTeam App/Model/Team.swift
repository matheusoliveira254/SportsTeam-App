//
//  Team.swift
//  SportsTeam App
//
//  Created by Matheus Oliveira on 9/24/22.
//

import Foundation

class Team {
    
    var name: String
    var ranking: Int
    var playerCount: Int
    
    init(name: String, ranking: Int, playerCount: Int) {
        self.name = name
        self.ranking = ranking
        self.playerCount = playerCount
    }
}
