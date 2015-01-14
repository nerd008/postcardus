//
//  ViewController.swift
//  Postcardus
//
//  Created by Aubrey's Macbook on 14/01/15.
//  Copyright (c) 2015 DataSet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mesageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //first line is to unhide the hidden field so that the text to be displayed shows
        //2nd line is taking the value from our EnterMessageTextField to display in our label
        //3rd line, makes the field empty after click on send
        mesageLabel.hidden = false
        mesageLabel.text = enterMessageTextField.text
        mesageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        //next line makes the keyboard go away
        enterMessageTextField.resignFirstResponder()
        //line below changes the string Send Mail to Mail Sent 
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

