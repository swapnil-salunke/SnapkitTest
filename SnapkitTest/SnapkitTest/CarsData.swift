//
//  CarsData.swift
//  SnapkitTest
//
//  Created by Salunke, Swapnil Uday on 19/07/21.
//

import Foundation

struct Cars: Codable {
    let name: String
    let milesPerGallon, cylinders, displacement, horsepower: Int
    let weightInLbs: Int
    let acceleration: Double
    let year, origin: String

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case milesPerGallon = "Miles_per_Gallon"
        case cylinders = "Cylinders"
        case displacement = "Displacement"
        case horsepower = "Horsepower"
        case weightInLbs = "Weight_in_lbs"
        case acceleration = "Acceleration"
        case year = "Year"
        case origin = "Origin"
    }
    
    static func getData(fileName: String) -> [Cars] {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Cars].self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return []
    }
}
