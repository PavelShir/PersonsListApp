//
//  PersonsModel.swift
//  PersonsListApp
//
//  Created by 19543442 on 30.08.2022.
//

import Foundation
import UIKit

struct Person {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}

extension Person {

    static func getPersonList() -> [Person] {
        
        var persons = [Person]()
        let data = DataManager()
        
        let namesShuffled = data.names.shuffled()
        let surnameShuffled = data.surnames.shuffled()
        let phonesShuffled = data.phoneNambers.shuffled()
        let emailsShuffled = data.emails.shuffled()
        
        for index in 0..<data.names.count {
        
            persons.append(Person(
                name: namesShuffled[index],
                surname: surnameShuffled[index],
                phoneNumber: phonesShuffled[index],
                email: emailsShuffled[index]))
        }
     return persons
    }
    
}
