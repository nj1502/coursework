//
//  ViewController.swift
//  coursework
//
//  Created by Nathan Jayawardene on 2/20/17.
//  Copyright © 2017 Nathan Jayawardene. All rights reserved.
//

import UIKit
import FBSDKCoreKit;  //loadsa the facebook SDK to use as the account authenticator"
import FBSDKLoginKit
import Firebase //This imports the Firebase SDK

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
// requesting read permissions to the email address
    // This allows facebook to access account progiles and then login into the firebase databse
    
    @IBAction func facebookBtnTapped(_ sender: Any) {
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("NATHAN: Unable to authenticate with Facebook - \(error)")
            } else if result?.isCancelled == true {
                print("NATHAN: User cancelled Facebook authentication")
            } else {
                print("NATHAN: Successfully authenticated with Facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(_credential: credential)
            }
        }
        
    }

        
    

    //Authenticating passed credentials with firebase.
    func firebaseAuth(_credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: _credential, completion: { (user, error) in
            if error != nil {
                print("NATHAN: Unable to authenticate with Firebase - \(error)")
            } else {
                print("NATHAN: Successfully authenticated with Firebase")
            }
        })
    }
}


