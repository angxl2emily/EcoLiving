//
//  DareViewController.swift
//  EcoLiving
//
//  Created by Emily Chen on 7/19/22.
//

import UIKit
import Foundation

class DareViewController: UIViewController {

    var arrayOfDares = ["The next time you choose out an outfit from your closet, look for clothes you don't want anymore. Donate to a thrift store or look for online ads, donation boxes, and organizations.", "Heating up the water in your washing machine increases energy consumption. Run the next few laundry loads in cold water. It can help preserve the color and fabric of your clothing.", "If you can walk to your desired location, carpool with a friend, or take public transportation, we encourage you. Take things a step further by using a bike, skateboard, even a scooter!", "We challenge you to spend at least the entire day without purchasing any plastics and see how long you can go without using any plastic you already own.", "Don't stay indoors all day. Not only are you getting exercise and a good supply of vitamin D, but it's a wonderful way to interact with the world around you and to boost your mental health!", "Over 2 billion trees are cut down every year for paper! In an increasingly technological world, we suggest you take the day, even week, to go paperless.", "There is nothing more effective than working together. For those in school, we suggest you take part in an environmental club or a community nearby dedicated to the same cause.", "Reuse metal straws, refillable containers, storage jars, or repurposing empty food containers, even make DIY projects!", "Unplug chargers or appliances when not in use. The energy that provides for the function of these devices is derived from fossil fuels. Also think about the benefits of saving on energy bills.", "Do yourself a favor and turn off any electronic devices, shifting your focus on some down time. Take a nap, read your favorite book play with a pet, or simply go for a walk.", "For those who have gardens, we suggest planting a tree, shrub, or flower of your choice. If not, you can purchase a plant to keep inside the home. They can make great companions!", "Use any social media platform you have and advocate for any environmental causes, petitions, or resources you and your followers can visit or discuss.", "Include more veggies or fruits in your meals today. They are easier to prepare and contain many health benefits. Meat products also heavily impact greenhouse gas emissions, deforestation.", "Bring a tote bag everywhere for a day. Just in case you make a quick grocery stop and find yourself needing one!", "Turn off your tap waterwhen not in use. When brushing your teeth, cleaning dishes, washing your hands, or showering limit use of water that is left running down your sink or bathtub."]
    
    @IBOutlet weak var dateDisplay: UILabel!
    
    @IBOutlet weak var dareDescriptionLabel: UILabel!
    
    @IBOutlet weak var dareTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let randomNumber = Int.random(in: 0..<arrayOfDares.count)
        
        dareTitleLabel.text = arrayOfDares [randomNumber]
        
        dareDescriptionLabel.text = "Eco Living Dare #\(randomNumber + 1)"
        
        dateDisplay.text = "Date: \(getDate())"
    }
    
    @IBAction func completeDareBtn(_ sender: Any) {
        
        countVal += 1
        
    }
    
    @IBAction func denyBtn(_ sender: Any) {
        countVal += 0
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
