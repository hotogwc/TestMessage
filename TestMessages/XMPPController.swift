//
//  ViewController.swift
//  TestMessages
//
//  Created by 朱晓瑾 on 2021/7/28.
//

import Foundation
import XMPPFramework

enum XMPPControllerError: Error {
    case wrongUserJID
}

class XMPPController: NSObject {
    var xmppStream: XMPPStream
    
    let hostName: String
    let userJID: XMPPJID
    let hostPort: UInt16
    let password: String

    init(hostName: String, userJIDString: String, hostPort: UInt16 = 5222, password: String) throws {
        guard let userJID = XMPPJID(string: userJIDString) else {
            throw XMPPControllerError.wrongUserJID
        }

        self.hostName = hostName
        self.userJID = userJID
        self.hostPort = hostPort
        self.password = password

        // Stream Configuration
        self.xmppStream = XMPPStream()
        self.xmppStream.hostName = hostName
        self.xmppStream.hostPort = hostPort
        self.xmppStream.startTLSPolicy = XMPPStreamStartTLSPolicy.allowed
        self.xmppStream.myJID = userJID

        super.init()

        self.xmppStream.addDelegate(self, delegateQueue: DispatchQueue.main)

    }
    
    func connect() {
        if !self.xmppStream.isDisconnected {
            return
        }
        try! self.xmppStream.connect(withTimeout: XMPPStreamTimeoutNone)
        print(self.xmppStream.isConnected)
    }
    
    func sendMessage() {
        let message = "Yo!"
        let senderJID = XMPPJID(string: "user2@localhost")
        let msg = XMPPMessage(type: "chat", to: senderJID)
        
        msg.addBody(message)
        xmppStream.send(msg)
    }
}

extension XMPPController: XMPPStreamDelegate {

    func xmppStreamDidConnect(_ stream: XMPPStream) {
        print("Stream: Connected")
        try! stream.authenticate(withPassword: self.password)
    }
    
    func xmppStream(_ sender: XMPPStream, didReceiveError error: DDXMLElement) {
        print(error)
    }
    
    func xmppStream(_ sender: XMPPStream, didReceive message: XMPPMessage) {
        print(message)
    }
    
    func xmppStream(_ sender: XMPPStream, didReceive presence: XMPPPresence) {
        print(presence)
    }
    

    func xmppStreamDidAuthenticate(_ sender: XMPPStream) {
        self.xmppStream.send(XMPPPresence())
        print("Stream: Authenticated")
        sendMessage()
    }
}


