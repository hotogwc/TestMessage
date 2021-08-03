//
//  ViewController.swift
//  TestMessages
//
//  Created by 朱晓瑾 on 2021/7/28.
//

import UIKit
import XMPPFramework

class ViewController: UIViewController,XMPPStreamDelegate {

//    var stream:XMPPStream!
//
//      override func viewDidLoad() {
//        super.viewDidLoad()
//
//        stream = XMPPStream()
//        stream.addDelegate(self, delegateQueue: DispatchQueue.main)
//
//        stream.myJID = XMPPJID(string: "ningmengjean@chatterboxtown.us")
//
//        do {
//            try stream.connect(withTimeout: 30)
//        }
//        catch {
//            print("error occured in connecting")
//        }
//        func xmppStreamWillConnect(sender: XMPPStream!) {
//                print("will connect")
//            }
//
//            func xmppStreamConnectDidTimeout(sender: XMPPStream!) {
//                print("timeout:")
//            }
//
//            func xmppStreamDidConnect(sender: XMPPStream!) {
//                print("connected")
//
//                do {
//                    try sender.authenticate(withPassword: "821721zxj")
//                }
//                catch {
//                    print("catch")
//
//                }
//
//            }
//
//
//            func xmppStreamDidAuthenticate(sender: XMPPStream!) {
//                print("auth done")
//                sender.send(XMPPPresence())
//            }
//
//
//            func xmppStream(sender: XMPPStream!, didNotAuthenticate error: DDXMLElement!) {
//                print("dint not auth")
//                print(error)
//            }

    //}
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
