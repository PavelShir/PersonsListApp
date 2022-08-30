//
//  PersonsModel.swift
//  PersonsListApp
//
//  Created by 19543442 on 30.08.2022.
//

import Foundation

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
        [
            Person()
        
        
        ]
    }
}
