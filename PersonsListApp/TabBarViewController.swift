//
//  TabBarViewController.swift
//  PersonsListApp
//
//  Created by 19543442 on 31.08.2022.
//

import UIKit

final class TabBarViewController: UITabBarController {

    private var personsList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataTransfer()
        
    }
    
    private func dataTransfer() {
        
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            guard let navigatingVC = viewController as? UINavigationController else { return }
            
            if let personVC = navigatingVC.topViewController as? PersonListViewController {
                personVC.comePersonList = personsList
            } else if let extensiveVC = navigatingVC.topViewController as? ExtensiveViewController {
                extensiveVC.contactsList = personsList
            }
        }
    }

}
