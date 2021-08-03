//
//  ViewController.swift
//  TestMessages
//
//  Created by 朱晓瑾 on 2021/7/28.
//

import UIKit
import XMPPFramework

class ViewController: UIViewController, XMPPStreamDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

//    var stream:XMPPStream!
//    let xmppRosterStorage = XMPPRosterCoreDataStorage()
//    var xmppRoster: XMPPRoster!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        
//        xmppRoster = XMPPRoster(rosterStorage: xmppRosterStorage)
//
//        stream = XMPPStream()
////        self.xmppStream.hostName = hostName
////        self.xmppStream.hostPort = hostPort
////        self.xmppStream.startTLSPolicy = XMPPStreamStartTLSPolicy.allowed
////        self.xmppStream.myJID = userJID
//        stream.addDelegate(self, delegateQueue: DispatchQueue.main)
//        
//        xmppRoster.activate(stream)
//        
//
//        stream.myJID = XMPPJID(string: "user1@localhost")
//        
//        do {
//            try stream.connect(withTimeout: 30)
//        }
//        catch {
//            print("catch")
//            
//        }
//        
//        
//        let button = UIButton()
//        button.backgroundColor = UIColor.red
//        button.setTitle("SendMessage", for: .normal)
//        button.frame = CGRect(x: 90, y: 100, width: 300, height: 40)
//        button.addTarget(self, action: #selector(sendMessage), for: .touchUpInside)
//        
//        self.view.addSubview(button)
//    }
//    
//    @objc func sendMessage() {
//
//        let message = "Yo!"
//        let senderJID = XMPPJID(string: "user2@localhost")
//        let msg = XMPPMessage(type: "chat", to: senderJID)
//        
//        msg.addBody(message)
//        stream.send(msg)
//    }
//    
//    
//    func xmppStreamWillConnect(sender: XMPPStream!) {
//        print("will connect")
//    }
//    
//    func xmppStreamConnectDidTimeout(_ sender: XMPPStream) {
//        print("timeout:")
//    }
//    
//    func xmppStreamDidConnect(sender: XMPPStream!) {
//        print("connected")
//        
//        do {
//            try sender.authenticate(withPassword: "pass")
//        }
//        catch {
//            print("catch")
//            
//        }
//
//    }
//    
//    
//    func xmppStreamDidAuthenticate(_ sender: XMPPStream) {
//        print("auth done")
//        sender.send(XMPPPresence())
//    }
//    
//
//    func xmppStream(_ sender: XMPPStream, didNotAuthenticate error: DDXMLElement) {
//        print("dint not auth")
//        print(error)
//    }
//    
//    func xmppStream(sender: XMPPStream!, didReceivePresence presence: XMPPPresence!) {
//        print(presence)
//        let presenceType = presence.type
//        let username = sender.myJID?.user
//        let presenceFromUser = presence.from?.user
//        
//        if presenceFromUser != username  {
//            if presenceType == "available" {
//                print("available")
//            }
//            else if presenceType == "subscribe" {
//                self.xmppRoster.subscribePresence(toUser: presence.from!)
//            }
//            else {
//                print("presence type"); print(presenceType)
//            }
//        }
//   
//    }
//    
//    func xmppStream(sender: XMPPStream!, didSendMessage message: XMPPMessage!) {
//        print("sent")
//    }
//    
//    private func xmppStream(sender: XMPPStream!, didFailToSendIQ iq: XMPPIQ!, error: NSError!) {
//        print(error.localizedDescription)
//        print("error")
//    }
//    
//    func xmppStream(_ sender: XMPPStream, didReceiveError error: DDXMLElement) {
//        
//        print("error")
//    }
//    
//    private func xmppStream(sender: XMPPStream!, didFailToSendMessage message: XMPPMessage!, error: NSError!) {
//        print("fail")
//    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    func xmppStream(sender: XMPPStream!, didReceiveMessage message: XMPPMessage!) {
//        print(message)
//    }
}
