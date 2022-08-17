//
//  CatiTableTableViewController.swift
//  TableProject
//
//  Created by Scholar on 8/17/22.
//

import UIKit

struct categorizingCacti {
    var id : Int
    var specieOfCacti : String
    var description : String
    var image : String
}

class CatiTableTableViewController: UITableViewController {
    var typesOfCacti = [
         categorizingCacti(id: 1,
               specieOfCacti: "Prickly Pear",
               description: "Opuntia, commonly called prickly pear, is a genus in the cactus family, Cactaceae.",
               image: "prickly-pear"),
         categorizingCacti(id: 2,
               specieOfCacti: "Hedgehog Cacti",
               description: "Echinopsis is a large genus of cacti native to South America, sometimes known as hedgehog cactus, sea-urchin cactus or Easter lily cactus.",
               image: "hedgehog"),
         categorizingCacti(id: 3,
               specieOfCacti: "Rebutia",
               description: "Rebutia is a genus in the family Cactaceae, native to Bolivia and Argentina. They are generally small, colorful cacti, and globular in form.",
               image: "rebutia")
     ]


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typesOfCacti.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.textLabel?.text =  typesOfCacti[indexPath.row].specieOfCacti
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

            return "Section \(section)"

        }

    }

