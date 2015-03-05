//
//  InSocket.swift
//  Viper 2
//
//  Created by Isha on 2015-03-05.
//  Copyright (c) 2015 Isha. All rights reserved.
//

import Cocoa

class InSocket: NSObject, GCDAsyncUdpSocketDelegate {
    
    let IP = "255.255.255.255"
    let PORT:UInt16 = 11000
    var socket:GCDAsyncUdpSocket!
    
    override init(){
        super.init()
        setupConnection()
    }
    
    func setupConnection(){
        var error : NSError?
        socket = GCDAsyncUdpSocket(delegate: self, delegateQueue: dispatch_get_main_queue())
        socket.bindToPort(PORT, error: &error)
        socket.connectToHost(IP, onPort: PORT, error: &error)
        socket.beginReceiving(&error)
        println("Listening on port \(PORT)..")
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didReceiveData data: NSData!, fromAddress address: NSData!,      withFilterContext filterContext: AnyObject!) {
        println("incoming message: \(data)");
    }
}
