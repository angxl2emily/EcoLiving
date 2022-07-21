//
//  TruthViewController.swift
//  EcoLiving
//
//  Created by Emily Chen on 7/19/22.
//

import UIKit
import Foundation

class TruthViewController: UIViewController {
    
    var arrayOfTruths = ["In the last 25 years, sea levels have increased by 10 cm. The worldwide mean sea level has risen by around 8–9 inches since 1880! Analysts believe that Venice will be fully submerged by the year 2100." , "There are presently roughly 3,500,000,000,000 fish in our waters (that's a lot of zeros!). So, picture how much plastic that means there may be in the seas by 2050..." , "Scientists think that up to half of all species will be extinct by the end of the century." , "In the past century, the global temperature has risen by around 33.8°F or 1°C. This, according to many experts, is confirmation that global warming is occuring." , "Around 25% of coral reefs have been irrevocably devastated. Pollution, overfishing, harmful fishing tactics with dynamite, harvesting live corals for aquariums, and climate change are all factors." , "Most of the world's water is salty; 97% of the earth's water is actually salt water found in the oceans." , "Phosphorus is a key nutrient for plants to grow and survive." , "The Sahara and the Amazon Rainforest may be miles apart, but they share tons of dust. Dust carried by the wind of the Saharan Desert helped fertilize the Amazon, the world's most biodiverse ecosystem!" , "The UN's Environment Agency declared that the ozone layer is on track to heal completely in our lifetime by 2069. If humans work together, we can really save the planet!" , "Temperature rainforests occur in mid-latitude, temperate zones, receiving heavy rainfall due to an 'oceanic' climate. They are so damp that plants grow on other plants." , "South-east Asia has lost up to 80% of its natural forest due to deforestation. The Orangutan population has declined. If deforestation continues, these huge apes may become extinct in 20 years." , "Recycling paper has a significant positive impact on the environment, equivalent to saving 17 trees, 2 barrels of oil, 3.2 cubic yards of landfill and 60 pounds of air pollution." , "The Taiga houses 30% of the world's forest cover, 11% of the Earth's landmass and stretches from Scotland to Newfoundland, via Russia and Canada!" , "Fungi decompose dead matter, break down rocks and help absorb oil spills. Through the decomposition process, fungi release nutrients into the soil, which are needed for plants to grow and thrive." , "Less than 1% of fresh water is actually usable—2.5% of the Earth's supply of fresh water is unavailable to human beings (ex. too far under the surface, locked up in glaciers, highly polluted, etc.)." , "Ocean thermal energy is a new technology that produces energy by harnessing the different temperatures between the deep ocean and the ocean surface." , "Beet juice can be used on roads instead of dalt as a decier; it freezes at -20°C rather than -5°C and is less harmful to the environment." , "Salt-based deciers are not only harmful to vechiles and infastrucutes, but excess salt from roadways flows into freshwater and shallow local ecosystems." , "Recycling one aluminum can save enough energy to power a television for three hours!" , "Aluminium is the most recyclable material, and one of the most recycled materials! Aluminina has a cost-effective recycling process, saving 90% more energy than sourcing new aluminum."]

    @IBOutlet weak var dateDisplay: UILabel!
    @IBOutlet weak var truthTitleLabel: UILabel!
    
    @IBOutlet weak var truthContent: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dateDisplay.text = "Date: \(getDate())"
        
        var randomNumber = Int.random(in: 0..<arrayOfTruths.count)
            truthContent.text = arrayOfTruths[randomNumber]
            truthTitleLabel.text = "Eco Living Fact #\(randomNumber + 1)"

        
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
