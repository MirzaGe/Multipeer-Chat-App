//
//  ChatViewController.swift
//  Multipeer Chat App
//
//  Created by sherry on 02/02/2022.
//

import UIKit
import MultipeerConnectivity

class ChatViewController: UIViewController, MCSessionDelegate, MCBrowserViewControllerDelegate, MCNearbyServiceAdvertiserDelegate {
    
   
    

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var hostButton: UIButton!
    
    @IBOutlet weak var guestButton: UIButton!
    
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var messageTextfield: UITextField!
    
    
    @IBOutlet weak var historyTextfield: UITextView!
    
    var peerID: MCPeerID!
    var mcSession: MCSession!
    var mcAdvertiserAssistance: MCAdvertiserAssistant!
    
    var history = "" //chat msgs
    var nickname = "" // currentuser
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTextfield.isEditable = false
        
        //get the nickname from userdefaults
        nickname = UserDefaults.standard.string(forKey: "nickname")!
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
    
    // MARK: - Multipeer Skeleton
    
    func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        <#code#>
    }
    
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        <#code#>
    }
    
    func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
        <#code#>
    }
    
    func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
        <#code#>
    }
    
    func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?) {
        <#code#>
    }
    
    func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController) {
        <#code#>
    }
    
    func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController) {
        <#code#>
    }
    
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        <#code#>
    }
    
}
