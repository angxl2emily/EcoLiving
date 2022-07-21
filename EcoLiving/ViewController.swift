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
    
        
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "Truth or Dare?"
        notificationContent.body = "Choose your EcoLiving Dare for today!"
        notificationContent.badge = NSNumber(value: 1)
        notificationContent.sound = .default
                        
        var datComp = DateComponents()
        datComp.hour = 8
        datComp.minute = 0
        let trigger = UNCalendarNotificationTrigger(dateMatching: datComp, repeats: true)
        let request = UNNotificationRequest(identifier: "ID", content: notificationContent, trigger: trigger)
                        UNUserNotificationCenter.current().add(request) { (error : Error?) in
                            if let theError = error {
                                print(theError.localizedDescription)
                            }
                        }
        
        
    }


}

