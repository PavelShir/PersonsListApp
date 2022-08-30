//
//  PersonsModel.swift
//  PersonsListApp
//
//  Created by 19543442 on 30.08.2022.
//

import Foundation
import UIKit

struct Person {
    
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}

extension Person {

    static func getPersonList() -> [Person] {
        
        var persons = [Person]()
        let data = DataManager()
        
        for index in 0...data.names.count {
        
            persons.append(Person(name: data.names[index], surname: data.surnames[index], phoneNumber: data.phoneNambers[index], email: data.phoneNambers[index]))
            
        }
     return persons
    }
    
}
