//
//  ViewController.swift
//  EcoLiving
//
//  Created by Emily Chen on 7/19/22.
//

import UIKit
import Foundation
import UserNotifications

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
    
        
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]){
            (granted, error) in
        }
        
        let content = UNMutableNotificationContent()
        
        content.title = "Truth or Dare?"
        content.body = "Choose your EcoLiving Dare for today!"
        
        let date = Date().addingTimeInterval(5)
        
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        center.add(request){
            (error) in
        }
        /*
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "Truth or Dare?"
        notificationContent.body = "Choose your EcoLiving Dare for today!"
        notificationContent.badge = NSNumber(value: 1)
        notificationContent.sound = .default
                        
        var datComp = DateComponents()
        datComp.hour = 17
        datComp.minute = 0
        let trigger = UNCalendarNotificationTrigger(dateMatching: datComp, repeats: true)
        let request = UNNotificationRequest(identifier: "ID", content: notificationContent, trigger: trigger)
                        UNUserNotificationCenter.current().add(request) { (error : Error?) in
                            if let theError = error {
                                print(theError.localizedDescription)
                            }
                        }
         
        */
        
    }


}

