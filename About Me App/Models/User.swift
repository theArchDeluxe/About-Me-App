//
//  User.swift
//  About Me App
//
//  Created by Alexey Elfimov on 31.10.2024.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    private func getUser() -> User {
        User(login: Alex, password: Password, person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let lastname: String
    let job: Company
    
    var fullName: String {
        "\(name) \(lastname)"
    }
    
    private func getPerson() -> Person {
        let name: String
        let lastname: String
        let job: Company
    }
    
}
struct Company {
    let title: String
    let jobTitle: String
}


