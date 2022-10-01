//
//  ViewController.swift
//  SportsTeam App
//
//  Created by Matheus Oliveira on 9/24/22.
//

import UIKit

class TeamDetailViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet weak var teamNameTextField: UITextField!
    @IBOutlet weak var teamRankTextField: UITextField!
    @IBOutlet weak var playerCountTextField: UITextField!
    
    //MARK: - Properties
    var teamToReceive: Team?
    var shared = TeamController.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    //MARK: - Methods
    func updateUI() {
        guard let teamToReceive = teamToReceive else {return}
        teamNameTextField.text = teamToReceive.name
        teamRankTextField.text = teamToReceive.ranking
        playerCountTextField.text = teamToReceive.playerCount

    }

//MARK: - IBActions
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let name = teamNameTextField.text,
              let rank = teamRankTextField.text,
              let playerCount = playerCountTextField.text else {return}
        if let teamToReceive = teamToReceive {
            shared.updateTeam(teamToUpdate: teamToReceive, newName: name, newRanking: rank, newPlayerCount: playerCount)
        } else {
            shared.createTeam(name: name, ranking: rank, playerCount: playerCount)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
            teamNameTextField.text = ""
            teamRankTextField.text = ""
            playerCountTextField.text = ""
        
    }
    @IBAction func deleteButtonTapped(_ sender: UIButton) {
        guard let team = teamToReceive else {return}
        shared.deleteTeam(teamToDelete: team)
        navigationController?.popViewController(animated: true)
    }
}
