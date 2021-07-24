//
//  CarListViewModel.swift
//  SnapkitTest
//
//  Created by Salunke, Swapnil Uday on 19/07/21.
//

import Foundation

enum CarFilterCategory {
    case manufacturer
    case country
}

class CarListViewModel {
    let unfilteredCarList = Cars.getData(fileName: "Cars")
    
    func getCarsFilteredBy(category: CarFilterCategory) -> [Cars] {
        
        return unfilteredCarList.filter { cars in
            
        }
    }
}
