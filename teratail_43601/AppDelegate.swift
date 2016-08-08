//
//  AppDelegate.swift
//  teratail_43601
//
//  Created by Kentarou on 2016/08/08.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        checkFirstViewController()
        return true
    }
    
    
    func checkFirstViewController() {
        
        let isLogin = NSUserDefaults.standardUserDefaults().boolForKey("UserLogin")
        
        var next: UIViewController!
        
        if isLogin {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            next = storyboard.instantiateInitialViewController()
            
        } else {
            let storyboard = UIStoryboard(name: "Login", bundle: nil)
            next = storyboard.instantiateInitialViewController()
        }
        
        self.window?.rootViewController = next
        self.window?.backgroundColor = UIColor.whiteColor()
        self.window?.makeKeyAndVisible()
    }
}

