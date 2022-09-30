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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//MARK: - IBActions
    @IBAction func saveButtonTapped(_ sender: UIButton) {
    }
    @IBAction func clearButtonTapped(_ sender: UIButton) {
    }
    @IBAction func deleteButtonTapped(_ sender: UIButton) {
    }
}
