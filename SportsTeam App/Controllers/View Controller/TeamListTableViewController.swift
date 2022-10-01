//
//  TeamListTableViewController.swift
//  SportsTeam App
//
//  Created by Matheus Oliveira on 9/24/22.
//

import UIKit

class TeamListTableViewController: UITableViewController {

    
    //MARK: - Properties
    let shared = TeamController.sharedInstance
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return shared.teams.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath) as? TeamTableViewCell else {return UITableViewCell()}
        let team = shared.teams[indexPath.row]
        cell.configureCell(with: team)
        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let team = shared.teams[indexPath.row]
            shared.deleteTeam(teamToDelete: team)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            if let index = tableView.indexPathForSelectedRow {
                if let teamDestination = segue.destination as? TeamDetailViewController {
                    let teamToSend = shared.teams[index.row]
                    teamDestination.teamToReceive = teamToSend
                }
            }
        }
    }

    //MARK: - IBActions
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
}
