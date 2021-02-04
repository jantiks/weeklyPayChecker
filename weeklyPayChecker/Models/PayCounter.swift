
//  payCounter.swift
//  weeklyPayChecker
//
//  this class returns the amount of money in addition to working ,
//  overtime hours and wage
//
//  Created by Tigran on 2/4/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import Foundation

struct PayCounter {
    
    func getPayingMoney(workingHours: Double, overTime: Double, wage: Double) -> Double {
        
        return (workingHours + overTime * 1.5) * wage
    }
    
}
