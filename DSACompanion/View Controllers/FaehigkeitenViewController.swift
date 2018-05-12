//
//  FaehigkeitenViewController.swift
//  DSACompanion
//
//  Created by Patrick Mondani on 04.05.18.
//  Copyright © 2018 dsa5dev. All rights reserved.
//

import UIKit

class FaehigkeitenViewController: UIViewController {

    @IBOutlet weak var faehigkeitenTableView: UITableView!
    
    var faehigkeiten = [String]()
    var faehigkeitDetail: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initalizeFaehigkeiten()
        faehigkeitenTableView.dataSource = self
        faehigkeitenTableView.delegate = self
    }
    
    // Initialisiere die Daten im Fähigkeiten-Array
    func initalizeFaehigkeiten(){
        faehigkeiten.append("Kraftakt")
        faehigkeiten.append("Überzeugen")
    }
    
    // Vorbereitung für View-Wechsel
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? FaehigkeitenDetailViewController{
            if let detailText = faehigkeitDetail{
                destinationViewController.faehigkeit = detailText
            }
        }
    }
}

/*
*       Erweiterung für DataSource
*
*
*
*
*
*
*/
extension FaehigkeitenViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return faehigkeiten.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = faehigkeitenTableView.dequeueReusableCell(withIdentifier: "faehigkeitCell", for: indexPath)
        cell.textLabel?.text = faehigkeiten[indexPath.row]
        return cell
    }
}

/*
 *       Erweiterung für Delegate
 *
 *
 *
 *
 *
 *
 */
extension FaehigkeitenViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        faehigkeitDetail = faehigkeiten[indexPath.row]
        performSegue(withIdentifier: "ShowDetail", sender: nil)
    }
}
