//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by user202124 on 24.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    var userNameValue: String!
    var passwordValue: String!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameTF.text = userNameValue
        passwordTF.text = passwordValue
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        userNameTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let logInVC = segue.destination as? LoginViewController else {return}
        logInVC.welcomeLabelValue = userNameTF.text
    }
    
    @IBAction func clickLogInBtn() {
        
        guard let userNameText = userNameTF.text, !userNameText.isEmpty else {
            showAlert(with: "Invalid authorization", message: "Enter login and password")
            return
        }
        if userNameTF.text != "User" || passwordTF.text != "password" {
            showAlert(with: "Invalid login or password", message: "Please, enter correct login and password")
            passwordTF.text = ""
        }
    }
    
    @IBAction func clickForgotUserNameBtn() {
        showAlert(with: "Forgot username?", message: "Your username is User")
    }
    
    @IBAction func clickForgotPasswordBtn() {
        showAlert(with: "Forgot password?", message: "Your password is password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(with title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(okAction)
        present(alert, animated: true)
        }

    }

