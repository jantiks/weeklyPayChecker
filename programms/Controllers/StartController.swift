//
//  StartController.swift
//
//

import UIKit

class StartController: UIViewController {

    //IBoutlets
    @IBOutlet var buttons: [UIButton]!
    var ch = RadioStreamer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // changing buttons corners
        for button in buttons {
            button.layer.cornerRadius = 10
        }
    }
    @IBAction func weeklyPayCheckerTapped(_ sender: UIButton) {
        // getting WeeklyPayCheckerController from storyboard
        ch.playStreaming()
    }
    
    @IBAction func triangleTesterTapped(_ sender: UIButton) {
        // getting WeeklyPayCheckerController from storyboard
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "TriangleTester") as? TriangleTesterController else { return }
        
        //opening WeeklyPayCheckerController
        navigationController?.pushViewController(vc, animated: true)

    }
    
}

