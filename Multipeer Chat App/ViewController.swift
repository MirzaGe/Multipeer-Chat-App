//
//  ViewController.swift
//  Multipeer Chat App
//
//  Created by sherry on 02/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func continueButtonAction(_ sender: Any) {
        let name = NameText.text
        if name != "" {
            //save the nickname
            UserDefaults.standard.set(name, forKey: "nickname")
            
            
            //Open the chat screen
            performSegue(withIdentifier: "OpenChat", sender: nil)
        }
    }
    

}

