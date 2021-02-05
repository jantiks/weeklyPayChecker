//
//  TriangleChecker.swift
//
//  this class returns the the type of triangle.
//
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
