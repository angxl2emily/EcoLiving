//
//  TruthViewController.swift
//  EcoLiving
//
//  Created by Emily Chen on 7/19/22.
//

import UIKit
import Foundation

class TruthViewController: UIViewController {

    @IBOutlet weak var dateDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dateDisplay.text = "Date: \(getDate())"
    }
    
    func getDate() -> String{
        let day = Date()
        let dateFormatter = DateFormatter()
         
        dateFormatter.dateFormat = "MM.dd.yyyy"
         
        let result = dateFormatter.string(from: day)
        return result
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
