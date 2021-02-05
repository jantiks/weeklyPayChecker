
//  payCounter.swift
//
//  this class returns the amount of money in addition to working ,
//  overtime hours and wage
//
//

import Foundation

struct PayCounter {
    
    func getPayingMoney(workingHours: Double, overTime: Double, wage: Double) -> Double {
        
        return (workingHours + overTime * 1.5) * wage
    }
    
}
