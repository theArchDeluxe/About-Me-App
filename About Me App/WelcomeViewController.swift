//
//  WelcomeViewController.swift
//  About Me App
//
//  Created by Alexey Elfimov on 16.10.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    private let primaryColor = UIColor(
        red: 255/255,
        green: 182/255,
        blue: 193/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 173/255,
        green: 216/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
    }
}

