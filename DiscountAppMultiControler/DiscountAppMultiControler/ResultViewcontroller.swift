//
//  ResultViewcontroller.swift
//  DiscountAppMultiControler
//
//  Created by student on 3/22/22.
//

import UIKit

class ResultViewcontroller: UIViewController {

    @IBOutlet weak var enterAmountOutlet: UILabel!
    
    
    @IBOutlet weak var enterDiscoutlet: UILabel!
    
    @IBOutlet weak var priceafterDiscountOutlet: UILabel!
    
    
    var amount = ""
    var discrate = ""
    var priceAfterDiscount = ""
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterAmountOutlet.text = enterAmountOutlet.text! + amount
        
        enterDiscoutlet.text = enterDiscoutlet.text! + discrate
        
        priceafterDiscountOutlet.text = priceafterDiscountOutlet.text! + priceAfterDiscount
        // Do any additional setup after loading the view.
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
