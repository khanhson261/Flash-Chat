//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Khanh Son on 8/10/22.
//
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet private weak var emailTextfield: UITextField!
    @IBOutlet private weak var passwordTextfield: UITextField!
    // MARK: - IBActions
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let err = error {
                    DispatchQueue.main.async {
                        self.presentControler(err)
                    }
                } else {
                        self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
            
        }
    }
    // MARK: - Privates
    private func presentControler(_ error:Error) {
        let alert = UIAlertController(title: "Alert", message: error.localizedDescription , preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
        }))
        present(alert, animated: true, completion: nil)
    }
}
