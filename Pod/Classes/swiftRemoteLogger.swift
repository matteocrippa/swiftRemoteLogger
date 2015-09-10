//
//  swiftRemoteLogger.swift
//
//
//  Created by Matteo Crippa on 9/9/15.
//  Copyright (c) 2015 Magnetic Media Network S.p.A. All rights reserved.
//

import UIKit
import Alamofire

var swiftRemoteLogger_endPoint = ""

class swiftRemoteLogger: NSObject {
    
    class func sLog<T>(object: T, filename: String = __FILE__, line: Int = __LINE__, funcname: String = __FUNCTION__) {
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy HH:mm:ss:SSS"
        var process = NSProcessInfo.processInfo()
        var threadId = "?"
        var log = ("\(dateFormatter.stringFromDate(NSDate())) \(process.processName))[\(process.processIdentifier):\(threadId)] \(filename.lastPathComponent)(\(line)) \(funcname):\r\t\(object)\n")
        
        Alamofire.request(.POST, swiftRemoteLogger_endPoint, parameters:
            [
                "data": log,
                "udid": UIDevice.currentDevice().identifierForVendor.UUIDString,
                "app": "\(NSBundle.mainBundle().bundleIdentifier!)",
                "password": "password"
            ]).responseJSON { _, _, JSON, _ in
                //println(JSON)
        }
        
    }
    
}
