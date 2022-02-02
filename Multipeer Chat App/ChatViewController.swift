//
//  ChatViewController.swift
//  Multipeer Chat App
//
//  Created by sherry on 02/02/2022.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var hostButton: UIButton!
    
    @IBOutlet weak var guestButton: UIButton!
    
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var messageTextfield: UITextField!
    
    
    @IBOutlet weak var historyTextfield: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTextfield.isEditable = false
        
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func hostButtonAction(_ sender: Any) {
    }
    
    @IBAction func guestButtonAction(_ sender: Any) {
    }

    @IBAction func sendButtonAction(_ sender: Any) {
    }
    
}
