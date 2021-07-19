//
//  JsonData.swift
//  SnapkitTest
//
//  Created by Salunke, Swapnil Uday on 19/07/21.
//

import Foundation
class JsonData {
    static let shared = JsonData()
    
    lazy var carsData : [Cars] = {
        return Cars.getData(fileName: "Cars")
    }()
    
    lazy var carsCount: Int = {
        return carsData.count
    }()
}
