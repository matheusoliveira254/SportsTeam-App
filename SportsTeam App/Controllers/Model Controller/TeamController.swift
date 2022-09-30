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
    private var teams: [Team] = []
    
    //MARK: - Initialization
    init() {
        load()
    }
    
    //MARK: - CRUD
    func createTeam() {
        
    }
    
    func updateTeam() {
        
    }
    
    func deleteTeam() {
        
    }
    
    //MARK: - Persistence
    func save() {
        
    }
    
    func load() {
        
    }
}
