//
//  ViewController.swift
//  GmailTestLast
//
//  Created by Sami Ahmed on 26/10/2023.
//

import UIKit
import GoogleSignIn
//

class ViewController: UIViewController {
    let signInConfing = GIDConfiguration.init(clientID: "    67522254591-jjjt1vjtu5dnrjeindm5hmkobf8n7m1a.apps.googleusercontent.com")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogin(_ sender: Any) {
          GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
            guard error == nil else { return }
                  guard let signInResult = signInResult else { return }

                  let user = signInResult.user

                  let emailAddress = user.profile?.email

            // If sign in succeeded, display the app's main content View.
          }
        }
    }
    


