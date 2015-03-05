//
//  ViewController.swift
//  Viper 2
//
//  Created by Isha on 2015-03-02.
//  Copyright (c) 2015 Isha. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController {

    @IBOutlet weak var ipAddress: NSTextField!
    @IBOutlet weak var port: NSTextField!
    
    var inSocket : InSocket!
    
    @IBAction func runViper(sender: AnyObject) {
        inSocket = InSocket()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ipAddress.stringValue = NSHost.currentHost().addresses[1] as NSString
        port.stringValue = "11000"
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}