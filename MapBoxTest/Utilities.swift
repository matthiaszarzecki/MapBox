//
//  Utilities.swift
//  MapBoxTest
//
//  Created by Zarzecki, Matthias on 01.08.18.
//  Copyright © 2018 Matthias Zarzecki. All rights reserved.
//

import Foundation

class Utilities {
    public static func getJSonFileAsDictionary(_ fileName: String = "") -> NSDictionary? {
        if let filePath = Bundle.main.path(forResource: fileName, ofType: "json"), let data = try? Data(contentsOf: URL(fileURLWithPath: filePath)) {
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
                return json as? NSDictionary
            } catch {
            }
        }
        return nil
    }
    
    public static func getJSonFileAsData(_ fileName: String = "") -> Data? {
        if let filePath = Bundle.main.path(forResource: fileName, ofType: "json"), let data = try? Data(contentsOf: URL(fileURLWithPath: filePath)) {
            do {
                return data
            }
        }
        return nil
    }
    

    
    public static func getPlanDirectionsFromData(data: Data) -> PlanDirections? {
        var response: PlanDirections?
        do {
            response = try JSONDecoder().decode(directionsResponse.self, from: data)
        } catch {
            print(error)
        }
        return response
    }
}

