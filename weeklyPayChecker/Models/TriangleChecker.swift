//
//  TriangleChecker.swift
//  weeklyPayChecker
//
//  this class returns the the type of triangle.
//
//  Created by Tigran on 2/4/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import Foundation

struct TriangleChecker {
    
    func getTriangleType(_ first: Double, _ second: Double, _ third: Double) -> String {
        if (first == second) && (second == third) {
            return "Equilateral"
        } else if (first == second) || (second == third) || (first == third) {
            return "Isosceles"
        } else {
            return "Scalene"
        }
    }
}
