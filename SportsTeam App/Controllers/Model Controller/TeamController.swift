//
//  TeamController.swift
//  SportsTeam App
//
//  Created by Matheus Oliveira on 9/24/22.
//

import Foundation

class TeamController {
    
    //MARK: - Singleton
    static let sharedInstance = TeamController()
    
    //MARK: - SOT
    var teams: [Team] = []
    
    //MARK: - Initialization
    init() {
        load()
    }
    
    //MARK: - CRUD
    func createTeam(name: String, ranking: Int, playerCount: Int) {
        let teamCreate = Team(name: name, ranking: ranking, playerCount: playerCount)
        teams.append(teamCreate)
        save()
    }
    
    func updateTeam(teamToUpdate: Team, newName: String, newRanking: Int, newPlayerCount: Int) {
        teamToUpdate.name = newName
        teamToUpdate.ranking = newRanking
        teamToUpdate.playerCount = newPlayerCount
        save()
    }
    
    func deleteTeam(teamToDelete: Team) {
        guard let indexOfTeamToDelete = teams.firstIndex(of: teamToDelete) else {return}
        teams.remove(at: indexOfTeamToDelete)
        save()
    }
    
    //MARK: - Persistence
    private var fileURL: URL? {
        guard let documentsDirectoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {return nil}
        let finalUrl = documentsDirectoryURL.appendingPathComponent("teams.json")
        return finalUrl
    }
    
    func save() {
        guard let saveLocation = fileURL else {return}
        
        do {
            let data = try JSONEncoder().encode(teams)
            try data.write(to: saveLocation)
        } catch let error {
            print(error)
        }
    }
    
    func load() {
        guard let loadLocation = fileURL else {return}
        
        do {
            let data = try Data(contentsOf: loadLocation)
            let decodedTeams = try JSONDecoder().decode([Team].self, from: data)
            self.teams = decodedTeams
        } catch let error {
            print(error)
        }
    }
}
