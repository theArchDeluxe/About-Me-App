//
//  UserInfoViewController.swift
//  About Me App
//
//  Created by Alexey Elfimov on 31.10.2024.
//

import UIKit

class UserInfoViewController: UIViewController {

    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let user = user else {
            print("User is nil")
            return
        }
        view.addVerticalGradientLayer()
        title = user.person.fullName
        nameLabel.text = user.person.name
        lastnameLabel.text = user.person.lastname
        jobTitleLabel.text = user.person.job.title
        jobTitleLabel.text = user.person.job.jobTitle
        
    }
}
    
    


