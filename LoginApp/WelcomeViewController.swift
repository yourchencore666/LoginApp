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
    }
    
    @IBAction func clickForgotUserNameBtn() {
    }
    
    @IBAction func clickForgotPasswordBtn() {
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}
