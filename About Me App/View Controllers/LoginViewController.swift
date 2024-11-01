//
//  ViewController.swift
//  About Me App
//
//  Created by Alexey Elfimov on 15.10.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = user.login
        passwordTextField.text = user.password
        print("User ID: ", user.id)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String, sender: Any?) -> Bool {
            guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login or password") {
                self.passwordTextField.text = ""
            }
            return false
        }
        return true
    }
        
    @IBAction func forgotUsername(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.login)")
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password)")
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

    
