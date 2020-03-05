//
//  AppDelegate.swift
//  TesteConcrete
//
//  Created by Mônica Marques on 04/03/20.
//  Copyright © 2020 Mônica Marques. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.setupHome()
        
        return true
    }
    
    func setupHome() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let homeViewController = storyboard.instantiateViewController(withIdentifier: "TabBarController")
        
        self.window?.rootViewController = homeViewController
        
        
    }
    
}

