//
//  ViewController.swift
//  EcoLiving
//
//  Created by Emily Chen on 7/19/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var greetingMsg: UILabel!
    
    let hour = Calendar.current.component(.hour, from: Date())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if hour < 12 {
            greetingMsg.text = "Good Morning!"
        }
        else if hour < 18 {
            greetingMsg.text = "Good Afternoon!"
        }
        else{
            greetingMsg.text = "Good Evening!"
        }
    
    }


}

