//
//  AppDelegate.swift
//  MapBoxText
//
//  Created by Zarzecki, Matthias on 30.07.18.
//  Copyright © 2018 Matthias Zarzecki. All rights reserved.
//

import UIKit
import Mapbox
import MapboxCoreNavigation
import MapboxNavigation
import MapboxDirections

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let jsonDictionary = Utilities.getJSonFileAsDictionary("DirectionsExample")
        print(jsonDictionary!)
        print("")
        
        let jsonData = Utilities.getJSonFileAsData("DirectionsExample")
        print(jsonData!)
        print("")
        
        let directions = Utilities.getPlanDirectionsFromData(data: jsonData!)
        print(directions!)
        print("")
        
        let routeOptions = RouteOptions(waypoints: directions?.waypoints)
        let newRoute = Route.init(json: jsonDictionary as! [String : Any], waypoints: directions?.waypoints, options: routeOptions)
        
        return true
    }
}
