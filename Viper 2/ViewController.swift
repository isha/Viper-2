//
//  ViewController.swift
//  Viper 2
//
//  Created by Isha on 2015-03-02.
//  Copyright (c) 2015 Isha. All rights reserved.
//

import Cocoa
import Foundation
import Quartz

class ViewController: NSViewController {

    @IBOutlet weak var ipAddress: NSTextField!
    @IBOutlet weak var port: NSTextField!
    
    
    var Stage: QCView!
    var inSocket : InSocket!
    
    @IBAction func runViper(sender: AnyObject) {
        inSocket = InSocket()
    }
    
    func applicationDidFinishLaunching() {
        println("Application finished launching")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ipAddress.stringValue = NSHost.currentHost().addresses[1] as NSString
        port.stringValue = "11000"
        
        // Setup QCComposition to the Stage view
        Stage = QCView(frame: CGRectMake(0, 0, 100, 100))
        Stage.loadCompositionFromFile("/Users/isha/Downloads/Base.lproj/testQC.qtz")
        Stage.startRendering()
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}