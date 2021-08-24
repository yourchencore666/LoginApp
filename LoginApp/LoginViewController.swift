//
//  ViewController.swift
//  LoginApp
//
//  Created by user202124 on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeLabelValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(String(describing: welcomeLabelValue!))!"
    }
    
}
