//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Everett Brothers on 10/10/23.
//

import UIKit

class AthleteFormViewController: UIViewController {

    var athlete: Athlete?
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var leagueField: UITextField!
    @IBOutlet weak var teamField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        guard let athlete = athlete else { return}
        nameField.text = athlete.name
        ageField.text = String(athlete.age)
        leagueField.text = athlete.league
        teamField.text = athlete.team
    }
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        athlete = Athlete(name: nameField.text!, age: Int(ageField.text!)!, league: leagueField.text!, team: teamField.text!)
        performSegue(withIdentifier: "unwindToTable", sender: self)
    }
    
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
