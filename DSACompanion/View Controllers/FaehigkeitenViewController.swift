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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("FaehigkeitenViewController ist geladen...")
        faehigkeiten.append("Kraftakt")
        faehigkeiten.append("Überzeugen")
        print("faehigkeiten-Array initialisiert...")
        faehigkeitenTableView.dataSource = self
        print("faehigkeitenTableView dataSource connected...")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

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
