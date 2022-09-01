//
//  TableViewController.swift
//  PersonsListApp
//
//  Created by 19543442 on 30.08.2022.
//

import UIKit

class PersonListViewController: UITableViewController {

    var comePersonList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
      
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        comePersonList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)

        let contact = comePersonList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        let person = comePersonList[index.row]
        detailsVC.personText = person.fullName
        detailsVC.emailText = person.email
        detailsVC.phoneText = person.phoneNumber
    }
    
}

