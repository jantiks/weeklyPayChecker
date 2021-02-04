//this class returns the amount of money in addition to working , overtime hours and wage
//  payCounter.swift
//  weeklyPayChecker
//
//  Created by Tigran on 2/4/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import Foundation

class payCounter {
    
    func getPayingMoney(workingHours: Double, overTime: Double, wage: Double) -> Double {
        
        return (workingHours + overTime * 1.5) * wage
    }
    
}
