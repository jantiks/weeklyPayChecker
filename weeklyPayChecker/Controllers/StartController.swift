//
//  ViewController.swift
//  weeklyPayChecker
//
//  Created by Tigran on 2/4/21.
//  Copyright © 2021 Tigran. All rights reserved.
//

import UIKit

class StartController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func weeklyPayCheckerTapped(_ sender: UIButton) {
        // getting WeeklyPayCheckerController from storyboard
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "WeeklyPay") as? WeeklyPayCheckerController else { return }
        
        //opening WeeklyPayCheckerController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func triangleTesterTapped(_ sender: UIButton) {
        // getting WeeklyPayCheckerController from storyboard
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "TriangleTester") as? TriangleTesterController else { return }
        
        //opening WeeklyPayCheckerController
        navigationController?.pushViewController(vc, animated: true)

    }
    
}

