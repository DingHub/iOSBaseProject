//
//  Log.swift
//  iOSBaseProject
//
//  Created by admin on 16/5/19.
//  Copyright © 2016年 Ding. All rights reserved.
//

import Foundation


/**
 print when debuging
 */
public func log(message:Any) {
    #if DEBUG  //tip : build settings -> Swift Compiler - Custom Flags -> Other Swift Flags -> debug = -D DEBUG
        print("\(message)")
    #endif
}

/**
 print detail log (starts with file name, line number and method name) when debuging
 */
public func dLog(message: Any? = nil, file:String = #file, line:Int = #line, function:String = #function) {
    #if DEBUG
        if let message = message {
            print("⭐️\((file as NSString).lastPathComponent)🔸\(line) 🌜\(function)🌛 \n\(message)")
        } else {
            print("⭐️\((file as NSString).lastPathComponent)🔸\(line) 🌜\(function)🌛")
        }
    #endif
}