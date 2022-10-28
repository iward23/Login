//
//  ViewController.swift
//  Login
//
//  Created by 9i on 10/28/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var forgotUsername: UIButton!
    
    @IBOutlet var forgotPassword: UIButton!
    
    @IBOutlet var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func forgotUsernameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotUserorPass",sender: sender)

    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotUserorPass",sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }

    }
}

