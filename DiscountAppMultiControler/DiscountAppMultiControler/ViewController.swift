//
//  ViewController.swift
//  DiscountAppMultiControler
//
//  Created by student on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOutlet: UITextField!
    
    
    @IBOutlet weak var discountRateOutlet: UITextField!
    
    var priceafterDisount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcDiscountButtonClicked(_ sender: UIButton) {
        //reading the values
        
        var amount=Double(amountOutlet.text!)
        
        var discountRate = Double(discountRateOutlet.text!)
        
        priceafterDisount = amount! - (amount!*discountRate!/100)
        
        
        
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewcontroller
            
            destination.amount = amountOutlet.text!
            destination.discrate = discountRateOutlet.text!
            destination.priceAfterDiscount = String (priceafterDisount)
        }
        
    }
}

