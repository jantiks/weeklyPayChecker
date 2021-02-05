//
//  TriangleTesterController.swift
//
//

import UIKit

class TriangleTesterController: UIViewController {

    //IBOutlets
    @IBOutlet weak var firstTF: UITextField!
    @IBOutlet weak var secondTF: UITextField!
    @IBOutlet weak var thirdTF: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var letsCheckButton: UIButton!
    
    
    //making triangleChecker
    let checker = TriangleChecker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Triangle Tester"
        
        //changing letsCheckButton corner radius
        letsCheckButton.layer.cornerRadius = 10
        
        // dismisses the keyboard when user taps on screen
        let tap: UIGestureRecognizer = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                
        view.addGestureRecognizer(tap)
    }
    
    //validation
    private func isValid(_ first: String, _ second: String, _ third: String) -> Bool {
        if isNotEmpty(first, second, third) && inputsAreNumbers(first, second, third) {
            return true
        }
        return false
    }
    
    //checks if the input is empty
    private func isNotEmpty(_ first: String, _ second: String, _ third: String) -> Bool {
        return (!first.isEmpty) && (!second.isEmpty) && (!third.isEmpty)
    }
    
    // checks if inputs are numbers
    private func inputsAreNumbers(_ first: String, _ second: String, _ third: String) -> Bool {
        
        if let _ = Double(first) , let _ = Double(second), let _ = Double(third) {
            return true
        }
        return false
    }
    
    //IBActions
    @IBAction func letsCheckTapped(_ sender: UIButton) {
        let first = firstTF.text ?? ""
        let second = secondTF.text ?? ""
        let third = thirdTF.text ?? ""

        if (isValid(first, second, third)) {
            let triangleType = checker.getTriangleType(Double(first)!, Double(second)!, Double(third)!)
            label.text = "It is \(triangleType) triangle"
        }
    }
    

    

}
