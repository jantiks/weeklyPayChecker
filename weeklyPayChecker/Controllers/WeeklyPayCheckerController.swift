//
//  WeeklyPayCheckerController.swift
//  weeklyPayChecker
//
//  Created by Tigran on 2/4/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import UIKit

class WeeklyPayCheckerController: UIViewController {
    // IBOutlets
    @IBOutlet private weak var workingHoursTF: UITextField!
    @IBOutlet private weak var overTimeTF: UITextField!
    @IBOutlet private weak var wageTF: UITextField!
    @IBOutlet private weak var amountLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    // making counter object from payCounter class
    let counter = PayCounter()


    override func viewDidLoad() {
        super.viewDidLoad()
        //changing calculate button corner radius
        calculateButton.layer.cornerRadius = 10
        
        // dismisses the keyboard when user taps on screen
        let tap: UIGestureRecognizer = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                
        view.addGestureRecognizer(tap)
        
        title = "Weekly Pay Checker"
    }
    
    // IBActions
    @IBAction private func calculateTapped(_ sender: UIButton) {
        let workingHoursStr = workingHoursTF.text ?? ""
        let overTimeStr = overTimeTF.text ?? ""
        let wageStr = wageTF.text ?? ""
        
        if (isValid(workingHoursStr, overTimeStr, wageStr)) {
            let workingHours = Double(workingHoursStr)!
            let overTime = Double(overTimeStr)!
            let wage = Double(wageStr)!
            let moneyAmount = counter.getPayingMoney(workingHours: workingHours,
                                                     overTime: overTime,wage: wage).removeZerosFromEnd()
            amountLabel.text = "\(moneyAmount)$"
        }
        
    }
    
    
    //validation of user input
    private func isValid(_ workingHours: String, _ overTime: String, _ wage: String) -> Bool {
        if isNotEmpty(workingHours, overTime, wage) && inputsAreNumbers(workingHours, overTime, wage) {
            return true
        }
        return false
    }
    
    //checks if the input is empty
    private func isNotEmpty(_ workingHours: String, _ overTime: String, _ wage: String) -> Bool {
        return (!workingHours.isEmpty) && (!overTime.isEmpty) && (!wage.isEmpty)
    }
    
    // checks if inputs are numbers
    private func inputsAreNumbers(_ workingHours: String, _ overTime: String, _ wage: String) -> Bool {
        
        if let _ = Double(workingHours) , let _ = Double(overTime), let _ = Double(wage) {
            return true
        }
        return false
    }
    
    
    
}
//removes last 0-s from double numberes
extension Double {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 16 //maximum digits in Double after dot (maximum precision)
        return String(formatter.string(from: number) ?? "")
    }
}
