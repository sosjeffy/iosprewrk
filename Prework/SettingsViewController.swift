//
//  SettingsViewController.swift
//  Prework
//
//  Created by Jeffy Touth on 3/30/21.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipPercentage1: UITextField!
    @IBOutlet weak var tipPercentage2: UITextField!
    @IBOutlet weak var tipPercentage3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTipSettings(_ sender: Any) {
        let defaults = UserDefaults.standard
        let tipValue1 = Double(tipPercentage1.text!) ?? 15
        let tipValue2 = Double(tipPercentage2.text!) ?? 18
        let tipValue3 = Double(tipPercentage3.text!) ?? 20
        
        defaults.set(tipValue1, forKey: "tipPercentage1")
        defaults.set(tipValue2, forKey: "tipPercentage2")
        defaults.set(tipValue3, forKey: "tipPercentage3")
        
        defaults.synchronize()
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
