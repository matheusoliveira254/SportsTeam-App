//
//  TeamTableViewCell.swift
//  SportsTeam App
//
//  Created by Matheus Oliveira on 9/30/22.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    //MARK: - IBOutlets
    @IBOutlet weak var teamNameCellLabel: UILabel!
    @IBOutlet weak var numberOfPlayersCellLabel: UILabel!
    @IBOutlet weak var rankingCellLabel: UILabel!
    
    func configureCell(with team: Team) {
        teamNameCellLabel.text = team.name
        numberOfPlayersCellLabel.text = team.playerCount
        rankingCellLabel.text = team.ranking
    }
}
