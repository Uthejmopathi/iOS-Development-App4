//
//  ViewController.swift
//  Assignment4
//
//  Created by Uthej Mopathi on 8/24/20.
//  Copyright © 2020 Uthej Mopathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var warnLabel: UILabel!
    
    @IBOutlet weak var redSig: UILabel!
    @IBOutlet weak var blueSig: UILabel!
    @IBOutlet weak var greenSig: UILabel!
    @IBOutlet weak var orangeSig: UILabel!
    
    @IBOutlet weak var colorsView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        userPassword.delegate = self
        userName.delegate = self
        
        redSig.backgroundColor = UIColor.red
        blueSig.backgroundColor = UIColor.blue
        greenSig.backgroundColor = UIColor.green
        orangeSig.backgroundColor = UIColor.orange
        
        orangeSig.alpha = 0.2
        redSig.alpha = 0.2
        greenSig.alpha = 0.2
        blueSig.alpha = 0.2
        
        //colorsView.backgroundColor = UIColor.orange
            //view.bringSubviewToFront(colorsView)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    @IBAction func colorButton(_ sender: Any) {
    }
    func randomize(){
        let anumber = Int.random(in: 1...4)
        // condition ? true : false
        blueSig.alpha = anumber == 2 ? 1 : 0.2
        greenSig.alpha = anumber == 3 ? 1 : 0.2
        orangeSig.alpha = anumber == 4 ? 1 : 0.2
        redSig.alpha = anumber == 1 ? 1 : 0.2
        
        
        
//        if anumber == 1 {
//            redSig.backgroundColor = UIColor.red
//            blueSig.alpha = 0.2
//            greenSig.alpha = 0.2
//            orangeSig.alpha = 0.2
//            redSig.alpha = 1
//        }
//        else if anumber == 2 {
//            blueSig.backgroundColor = UIColor.blue
//            blueSig.alpha = 1
//            redSig.alpha = 0.2
//            greenSig.alpha = 0.2
//            orangeSig.alpha = 0.2
//        }
//        else if anumber == 3 {
//            greenSig.backgroundColor = UIColor.green
//            blueSig.alpha = 0.2
//            redSig.alpha = 0.2
//            orangeSig.alpha = 0.2
//            greenSig.alpha = 1
//        }
//        else if anumber == 4 {
//            orangeSig.backgroundColor = UIColor.orange
//            blueSig.alpha = 0.2
//            greenSig.alpha = 0.2
//            redSig.alpha = 0.2
//            orangeSig.alpha = 1
//        }
    }
    //submitButtonTapped
    //submitButtonClicked
    //onClickofSubmitButton
    @IBAction func submitButton(_ sender: Any) {
        userName.resignFirstResponder()
        randomize()
        
        let name = userName.text
        let pass = userPassword.text
        
//        if name?.count > 0 {
//            if name == smlogics128aA765IL {
//
//                if pass ==
//            }
//        } else {
//            warnLabel.text = "Invalid Username"
//            return
//        }
        
        
        // is username nil or not -> return
        // username valid -> return
        // if pw nil or not -> return
        // pw valid or not -> return
        // success
        
        if name != "smlogics128aA765IL"{
            warnLabel.text = "Invalid Username"
            warnLabel.backgroundColor = UIColor.red
//            randomize()
        }
        else if pass != "unALTmR2816"{
            warnLabel.text = "Not Secure Enough, Try Again"
            warnLabel.backgroundColor = UIColor.red
            //randomize()
            //warnLabel.
        }
        else{
            if name == "smlogics128aA765IL" {
                warnLabel.text = ""
                warnLabel.backgroundColor = UIColor.white
                //randomize()
            }
            else{
                warnLabel.text = ""
                warnLabel.backgroundColor = UIColor.white
                //randomize()
            }
        }
    }
}

