//
//  User.swift
//  About Me App
//
//  Created by Alexey Elfimov on 31.10.2024.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "Alex", password: "Password", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let lastname: String
    let bio: String
    let job: Company
    
    
    var fullName: String {
        "\(name) \(lastname)"
    }
    
    static func getPerson() -> Person {
        Person (
        name: "Alexey",
        lastname: "Yelfimov",
        bio: "Тройка по биографии",
        job: Company.getCompany()
        )
    }
    
}
struct Company {
    let title: String
    let jobTitle: String
    
    static func getCompany() -> Company {
        Company(title: "Yandex", jobTitle: "Advertising Manager")
    }
}


