//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Khanh Son on 8/10/22.
//
//

import UIKit
import FirebaseAuth


class RegisterViewController: UIViewController {
// MARK: - IBOutlets
    @IBOutlet private weak var emailTextfield: UITextField!
    @IBOutlet private weak var passwordTextfield: UITextField!
// MARK: - IBActions
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let err = error {
                    self.presentControler(err)
                } else {
                    Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { timer in
                        self.performSegue(withIdentifier: K.registerSegue, sender: self)
                    }
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

