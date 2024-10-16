//
//  ViewController.swift
//  About Me App
//
//  Created by Alexey Elfimov on 15.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = user
    }
    
    override func touchesBegan(_ touches: Set, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        
    override func viewDidLoad() {
            super.viewDidLoad()
            
            
        }
        
        
    }
    
}
