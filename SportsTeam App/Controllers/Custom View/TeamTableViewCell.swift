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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
