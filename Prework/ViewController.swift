//
//  ViewController.swift
//  Prework
//
//  Created by Jeffy Touth on 3/27/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentagesSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        // This is a good place to retrieve the default tip percentage from UserDefaults
//        // and use it to update the tip amount
//        let defaults = UserDefaults.standard
//        let tipPercent1 = defaults.double(forKey: "tipPercentages1")
//        let tipPercent2 = defaults.double(forKey: "tipPercentages2")
//        let tipPercent3 = defaults.double(forKey: "tipPercentages3")
//        tipPercentagesSegment.setTitle(String(tipPercent1) + "%", forSegmentAt: 0)
//        tipPercentagesSegment.setTitle(String(tipPercent2) + "%", forSegmentAt: 1)
//        tipPercentagesSegment.setTitle(String(tipPercent3) + "%", forSegmentAt: 2)
//
//    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
//        let defaults = UserDefaults.standard
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
//        let tipPercentages = [Double(defaults.integer(forKey: "tipPercentages1"))/100, Double(defaults.integer(forKey: "tipPercentages2"))/100, Double(defaults.integer(forKey: "tipPercentages3"))/100]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update labels
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

