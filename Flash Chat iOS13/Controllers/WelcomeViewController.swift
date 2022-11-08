//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Khanh Son on 8/10/22.
//
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
// MARK: - IBOutlets
    @IBOutlet weak var titleLabel: CLTypingLabel!
// MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = K.appName
   
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
}
