//
//  BioViewController.swift
//  About Me App
//
//  Created by Alexey Elfimov on 04.11.2024.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var BioTextLabel: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let user = user else {
            print("User is nil")
            return
        }
        
        view.addVerticalGradientLayer()
        title = "\(user.person.fullName)"
        BioTextLabel.text = user.person.bio
    }
}
