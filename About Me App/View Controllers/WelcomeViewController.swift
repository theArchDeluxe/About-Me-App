//
//  WelcomeViewController.swift
//  About Me App
//
//  Created by Alexey Elfimov on 16.10.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    

    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let user = user else {
            print("User is nil")
            return
        }
        view.addVerticalGradientLayer()
        welcomeLabel.text = """
            Welcome, \(user.login)!
            My name is \(user.person.fullName).
            """
    }
}

