//
//  AppDelegate.swift
//  MapBoxText
//
//  Created by Zarzecki, Matthias on 30.07.18.
//  Copyright © 2018 Matthias Zarzecki. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let jsonData = Utilities.getJSonFileAsData("DirectionsExample")
        print(jsonData!)
        print("")
        
        let directions = Utilities.getPlanDirectionsFromData(data: jsonData!)
        print(directions!)
        print("")
        
        return true
    }
}
